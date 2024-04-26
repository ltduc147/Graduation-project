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
#include <xil_cache.h>
#include <xil_exception.h>
#include <xil_types.h>
#include "xil_printf.h"
#include "xaxidma.h"
#include "xparameters.h"
#include "xscugic.h"



#define INTERRUPT_ID 121 //pl_ps_irq[0:0]

XAxiDma_Config *Dma_Config;
XAxiDma Dma;
XScuGic xInterruptController;
XScuGic_Config *pxInterruptControllerConfig;

void ISR();

int main()
{
    ///*
    // initialization for AXI-Lite transfer
    
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


    // initialization for DMA
    u32 input_stream[32];
    u32 output_detect;
    u32 status;

    Dma_Config = XAxiDma_LookupConfig(XPAR_AXI_DMA_0_BASEADDR);
    status = XAxiDma_CfgInitialize(&Dma, Dma_Config);
    if (status != "XST_SUCCESS") {
        print("DMA initialization failed!\n");
		return -1;
    }
    print("DMA initialization success..\n");

    // Clear input stream cache
    Xil_DCacheFlushRange((u32)input_stream, 32*sizeof(u32));

    status = XAxiDma_SimpleTransfer(&Dma, (u32)input_stream, 32*sizeof(u32),XAXIDMA_DMA_TO_DEVICE);
	status = XAxiDma_SimpleTransfer(&Dma, (u32)output_detect, 1*sizeof(u32),XAXIDMA_DEVICE_TO_DMA);



    // Interrupt config
    pxInterruptControllerConfig = XScuGic_LookupConfig(XPAR_XSCUGIC_0_BASEADDR);
    status = XScuGic_CfgInitialize (&xInterruptController, pxInterruptControllerConfig, pxInterruptControllerConfig->CpuBaseAddress);
    if (status != "XST_SUCCESS") {
        print("Interrupt Controller initialization failed!\n");
		return -1;
    }

    XScuGic_SetPriorityTriggerType(&xInterruptController, INTERRUPT_ID, 0xA0, 3);
    status = XScuGic_Connect(&xInterruptController, INTERRUPT_ID, (Xil_InterruptHandler)ISR , 0);
    if (status != "XST_SUCCESS") {
        print("Interrupt Connection failed!\n");
		return -1;
    }
    XScuGic_Enable(&xInterruptController, INTERRUPT_ID);
    
    
    //Exception here
    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler) XScuGic_InterruptHandler, (void *)&xInterruptController);
    Xil_ExceptionEnable();

    //*/

    while (1) {

    }
    
    print("Hello World\n\r");
    print("Successfully ran Hello World application");
    return 0;
}


void ISR(){
    XScuGic_Disable(&xInterruptController, INTERRUPT_ID);
    // Do something

    XScuGic_Enable(&xInterruptController, INTERRUPT_ID);    
}