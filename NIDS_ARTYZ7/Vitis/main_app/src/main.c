/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */


#include <stdio.h>
#include "xil_printf.h"
#include <xil_io.h>
#include <xaxidma_hw.h>
#include <xil_exception.h>
#include <xil_types.h>
#include <xstatus.h>
#include "xil_cache.h"
#include "xaxidma.h"
#include "xparameters.h"
#include "xscugic.h"
#include "xtime_l.h"
#include "math.h"
#include "testData.h"


#define NN_INTERRUPT_ID 61 
#define S2MM_INTERRUPT_ID 62
#define NUM_OF_TEST 22544 // Max test: 82332 // 22544

XAxiDma Dma;
XAxiDma_Config *Dma_Config;
XScuGic xInterruptController;
XScuGic_Config *pxInterruptControllerConfig;
u32 status;
u32 send_status;
volatile int done = 0;
volatile int send_done = 0;
int current_test = 0;
int current_send = 0;
u32 feature_fixed[82332][13];
u32 input_stream[13] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
u32 output_detect[1] = {0};
XTime start, end;
    
void NN_ISR(void *CallBackRef);
void S2MM_ISR(void *CallBackRef);
void interrupt_config();
void dma_config();
void NN_config();
u32 float_to_fixed(float float_num, int data_width, int frac_bits);



int main()
{   
    //init_perfcounters(1,0);
    for (int i =0; i < 82332; i++){
        for (int j = 0; j < 13; j++){
            feature_fixed[i][j] = float_to_fixed(feature[i][j], 32, 16);
        }
    }
    dma_config();
    interrupt_config(); 
    Xil_Out32(XPAR_NN_AXI_0_BASEADDR + 0x10, (u32)1); // soft Reset
    Xil_Out32(XPAR_NN_AXI_0_BASEADDR + 0x10, (u32)0); // Clear soft reset
    XTime_SetTime(0);
    NN_config();
    u32 TP = 0, TN = 0, FP = 0, FN = 0; 

    Xil_DCacheDisable();
    
    //XTime_SetTime(0);
    /*
    for (int j = 0; j < 13; j++){
        input_stream[j] = float_to_fixed(feature[current_test][j], 32, 16);
    }
    */
    //xil_printf("%d")
    //XTime_GetTime(&start);
    status = XAxiDma_SimpleTransfer(&Dma, (UINTPTR)output_detect, sizeof(u32), XAXIDMA_DEVICE_TO_DMA);
    status = XAxiDma_SimpleTransfer(&Dma, (UINTPTR)feature_fixed[current_send], 13*sizeof(u32), XAXIDMA_DMA_TO_DEVICE);
    while (1){
        if (done){
            /*
            if (current_test == 0){
                XTime_GetTime(&end);
                printf("Execution time: %f miliseconds\n", (double)(end - start) / COUNTS_PER_SECOND);
            }
            */
            
            //printf("%d : %d\n", current_test, output_detect[0]);

            
            if (output_detect[0] == 0 && expected[current_test] == 0){
                TN++;
            } else if (output_detect[0] == 0 && expected[current_test] == 1){
                FN++;
            } else if (output_detect[0] == 1 && expected[current_test] == 0){
                FP++;
            } else {
                TP++;
            }
            
            //printf("Test %d. Accuracy: %f, Attack detect: %d, Expected: %d\n",current_test+1,match_expected*100.0/(current_test+1),output_detect[0],expected[current_test]);
            current_test++;
            done = 0;
            //xil_printf("i: %d\n",i);
            
            if (current_test == NUM_OF_TEST) {
                //XTime_GetTime(&end);
                printf("--------------------------------------------------------------------\n");
                //printf("Execution time: %f seconds\n", (double)(end - start) / COUNTS_PER_SECOND);
                printf("TN: %d, FP: %d, FN: %d, TP:, %d\n", TN,FP,FN,TP);
                printf("Accuracy: %f \n", (TP+TN)*100.0/(TP+TN+FP+FN));
                printf("False positive rate(FPR): %f \n", (FP)*100.0/(FP + TN));
                printf("False negative rate(FNR): %f \n", (FN)*100.0/(FN + TP));
                float Precision = (TP)*100.0/(TP + FP);
                float Recall = (TP)*100.0/(TP + FN);
                printf("Precision: %f \n", Precision);
                printf("Recall: %f \n", Recall);
                printf("F1 score: %f \n", (2*Precision*Recall)/(Precision + Recall));
                break;
            };
            
            status = XAxiDma_SimpleTransfer(&Dma, (UINTPTR)output_detect, sizeof(u32), XAXIDMA_DEVICE_TO_DMA);
            status = XAxiDma_SimpleTransfer(&Dma, (UINTPTR)feature_fixed[current_test], 13*sizeof(u32), XAXIDMA_DMA_TO_DEVICE);
        }
    }
    
    /*
    while (1){
        if (done){
            current_test++;
            done = 0;
            if (current_test == NUM_OF_TEST) {
                XTime_GetTime(&end);
                printf("--------------------------------------------------------------------\n");
                printf("Execution time: %f seconds\n", (double)(end - start) / COUNTS_PER_SECOND);
                break;
            };
            status = XAxiDma_SimpleTransfer(&Dma_2, (UINTPTR)output_detect, sizeof(u32), XAXIDMA_DEVICE_TO_DMA);
            
        }

        if (send_done){
            send_done = 0;
            current_send++;
            if (current_send != NUM_OF_TEST){
                send_status = XAxiDma_SimpleTransfer(&Dma, (UINTPTR)feature_fixed[current_send], 13*sizeof(u32), XAXIDMA_DMA_TO_DEVICE);
            }
        }
    }
    */
    return 0;
}

void NN_ISR(void *CallBackRef){
    XScuGic_Disable(&xInterruptController, NN_INTERRUPT_ID);
    send_done = 1;
    XScuGic_Enable(&xInterruptController, NN_INTERRUPT_ID);
}

void S2MM_ISR(void *CallBackRef){
    XAxiDma_IntrDisable((XAxiDma *)CallBackRef, XAXIDMA_IRQ_IOC_MASK, XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrAckIrq((XAxiDma *)CallBackRef, XAXIDMA_IRQ_IOC_MASK, XAXIDMA_DEVICE_TO_DMA);
    done = 1;
	XAxiDma_IntrEnable((XAxiDma *)CallBackRef, XAXIDMA_IRQ_IOC_MASK, XAXIDMA_DEVICE_TO_DMA);
}

void interrupt_config(){
    u32 status;
    // Interrupt config
    pxInterruptControllerConfig = XScuGic_LookupConfig(XPAR_XSCUGIC_0_BASEADDR);
    status = XScuGic_CfgInitialize (&xInterruptController, pxInterruptControllerConfig, pxInterruptControllerConfig->CpuBaseAddress);
    if (status != XST_SUCCESS) {
        print("Interrupt Controller initialization failed!\n");
    }

    /*
    XScuGic_SetPriorityTriggerType(&xInterruptController, NN_INTERRUPT_ID, 0xA0, 3);
    status = XScuGic_Connect(&xInterruptController, NN_INTERRUPT_ID, (Xil_InterruptHandler)NN_ISR , (void *)&Dma_2);
    if (status != XST_SUCCESS) {
        print("Interrupt Connection failed!\n");
    }
    XScuGic_Enable(&xInterruptController, NN_INTERRUPT_ID);
    */
    XAxiDma_IntrEnable(&Dma, XAXIDMA_IRQ_IOC_MASK, XAXIDMA_DEVICE_TO_DMA);
    XScuGic_SetPriorityTriggerType(&xInterruptController, S2MM_INTERRUPT_ID, 0xA1, 3);
    status = XScuGic_Connect(&xInterruptController, S2MM_INTERRUPT_ID, (Xil_InterruptHandler)S2MM_ISR , (void *)&Dma);
    if (status != XST_SUCCESS) {
        print("Interrupt Connection failed!\n");
    }
    XScuGic_Enable(&xInterruptController, S2MM_INTERRUPT_ID);
    
    
    //Exception here
    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler) XScuGic_InterruptHandler, (void *)&xInterruptController);
    Xil_ExceptionEnable();
    // End of interrupt config
    print("Interrupt initialization success..\n");
}

void dma_config(){
    Dma_Config = XAxiDma_LookupConfig(XPAR_AXI_DMA_0_BASEADDR);
    Dma_Config->AddrWidth = 0x20;
    Dma_Config->SgLengthWidth = 0xe;
    if (!Dma_Config) {
		xil_printf("No config found for\r\n");
	}
    status = XAxiDma_CfgInitialize(&Dma, Dma_Config);
    //status = XAxiDma_CfgInitialize(&Dma_2, Dma_Config);
    if (status != XST_SUCCESS) {
        print("DMA initialization failed!\n");
    }
    print("DMA initialization success..\n");
}

u32 float_to_fixed(float float_num, int data_width, int frac_bits) {
    if (float_num >= 0) {
        return (u32)(float_num * (1 << frac_bits));
    } else {
        u32 fixed_value = (u32)((-float_num) * (1 << frac_bits));
        if (fixed_value == 0) {
            return 0;
        } else {
            return (1 << data_width) - fixed_value;
        }
    }
}

void NN_config(){
    XTime_GetTime(&start);
    // initialization for AXI-Lite transfer
    u32 num_of_neuron[3] = {4, 4, 2};
    u32 num_of_weight[3] = {13, 4, 4};
    float config_layer_1[4][14] = {{-1.0668983, 0.77628905, 0.14643778, -0.0044665067, -0.0039738715, -19.109972, -10.949525, -0.53333545, 0.1812759, -5.489744, -5.9589787, -10.9653015, -12.0841, -0.6152852},
                         {1.1753685, -0.22892733, 0.10832103, -0.004009335, 4.6702575e-05, -33.610703, -17.590399, -0.005893515, 0.38995636, 3.2995532, 0.57512736, -0.3547768, 10.055154, 1.2225462},
                         {-2.3654978, 0.7388698, 0.015176744, -0.07434162, -0.0021964894, -21.100422, -10.27156, 0.012836773, -0.091327414, -4.7972565, 14.778316, -8.256048, -5.9675584, 6.707199},
                         {0.029145835, -0.45090762, 0.1392224, 0.025093414, -0.09122079, -6.4074965, -4.021833, 0.02276996, 0.29823563, 1.4985642, -17.6837, 1.7925425, -1.0037979, 14.707674}};
                         
    float config_layer_2[4][5] = {{0.08465427, 0.08163342, 0.46040365, -0.1589395, -1.0040873},
                         {0.11109077, -2.6332345, 0.17994562, -0.15165514, -4.5843663},
                         {-0.0017020106, -0.2453466, -0.15414071, -0.08096254, 0.0},
                         {-0.1657152, -0.70249796, 0.01751577, -0.35111746, -0.2507539}
                        };

    float config_layer_3[2][5] = {{-0.4676044, -0.4387312, 0.33383417, 0.534775, 0.0},
                         {0.044947527, -0.13812393, 0.30095983, -0.3252034, -0.09771533}
                        };
    
    for (u32 i=0; i< 3; i++){
        // Config layer number
        Xil_Out32(XPAR_NN_AXI_0_BASEADDR, i);
        for (u32 j=0; j < num_of_neuron[i]; j++){
            // Config layer number
            Xil_Out32(XPAR_NN_AXI_0_BASEADDR + 0x4, j);

            u32 k;
            // Config weight
            for (k = 0; k < num_of_weight[i]; k++){
                if (i == 0){
                    //xil_printf("%x\n" ,float_to_fixed(config_layer_1[j][k], 32, 16));
                    Xil_Out32(XPAR_NN_AXI_0_BASEADDR + 0x8, float_to_fixed(config_layer_1[j][k], 32, 16)); 
                } else if (i == 1){
                    Xil_Out32(XPAR_NN_AXI_0_BASEADDR + 0x8, float_to_fixed(config_layer_2[j][k], 32, 16));
                    //xil_printf("%x\n", float_to_fixed(config_layer_2[j][k], 32, 16)); 
                } else {
                    Xil_Out32(XPAR_NN_AXI_0_BASEADDR + 0x8, float_to_fixed(config_layer_3[j][k], 32, 16)); 
                    //xil_printf("%x\n", float_to_fixed(config_layer_3[j][k], 32, 16)); 
                }                
            }
            // Config bias
            if (i == 0){
                Xil_Out32(XPAR_NN_AXI_0_BASEADDR + 0xC, float_to_fixed(config_layer_1[j][k], 32, 16)); 
            } else if (i == 1){
                Xil_Out32(XPAR_NN_AXI_0_BASEADDR + 0xC, float_to_fixed(config_layer_2[j][k], 32, 16)); 
            } else {
                Xil_Out32(XPAR_NN_AXI_0_BASEADDR + 0xC, float_to_fixed(config_layer_3[j][k], 32, 16)); 
            }  
        }
    }
    XTime_GetTime(&end);

    //printf("Neural network config time: %f seconds\n", (double)(end - start) / COUNTS_PER_SECOND);
    xil_printf("Neural network config done ...\n\n");
}

/*
    FILE* param_file;
    char param_file_name[100];
    char line[1024];
    u32 num_read;
    int num_of_neuron[3] = {4, 4, 2};
    
    
    // Config parameter for neural network through AXI-Lite interface
    for (int i = 0; i < 3; i++){
        // Config layer number
        Xil_Out32(XPAR_NN_AXI_0_BASEADDR, i);
        for (int j = 0; j < num_of_neuron[i]; j ++){
            // Config neuron number
            Xil_Out32(XPAR_NN_AXI_0_BASEADDR + 0x4, j);

            // Config weight
            sprintf(param_file_name, "config/w_%d_%d.cfg", i, j);
        
            param_file = fopen(param_file_name, "r");

            while (fscanf(param_file, "%s", line) != EOF)
            {
                // Convert the binary string to a uint32_t
                num_read = (u32)strtoul(line, NULL, 2);
                // Process the number
                Xil_Out32(XPAR_NN_AXI_0_BASEADDR + 0x8, num_read);

            }
            fclose(param_file);

            // Config bias
            sprintf(param_file_name, "config/b_%d_%d.cfg", i, j);
        
            param_file = fopen(param_file_name, "r");

            while (fscanf(param_file, "%s", line) != EOF)
            {
                // Convert the binary string to a uint32_t
                num_read = (u32)strtoul(line, NULL, 2);
                // Process the number
                Xil_Out32(XPAR_NN_AXI_0_BASEADDR + 0xC, num_read);

            }
            fclose(param_file);
        }
    }
    */