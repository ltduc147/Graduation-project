set(DRIVER_INSTANCES "ams_ps@0;ams_pl@400;ams@ffa50000")
set(DRIVER_PROP_0_LIST "xlnx,zynqmp-ams-ps;0x0;0x0")
set(DRIVER_OPTPROP_0_LIST "")
list(APPEND TOTAL_DRIVER_PROP_LIST DRIVER_PROP_0_LIST)
set(DRIVER_PROP_1_LIST "xlnx,zynqmp-ams-pl;0x400;0x0")
set(DRIVER_OPTPROP_1_LIST "")
list(APPEND TOTAL_DRIVER_PROP_LIST DRIVER_PROP_1_LIST)
set(DRIVER_PROP_2_LIST "xlnx,zynqmp-ams;0xffa50000;0x31")
set(DRIVER_OPTPROP_2_LIST "")
list(APPEND TOTAL_DRIVER_PROP_LIST DRIVER_PROP_2_LIST)