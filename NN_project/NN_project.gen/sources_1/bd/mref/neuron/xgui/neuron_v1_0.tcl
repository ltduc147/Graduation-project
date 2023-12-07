# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "actType" -parent ${Page_0}
  ipgui::add_param $IPINST -name "biasFile" -parent ${Page_0}
  ipgui::add_param $IPINST -name "dataWidth" -parent ${Page_0}
  ipgui::add_param $IPINST -name "layerNo" -parent ${Page_0}
  ipgui::add_param $IPINST -name "neuronNo" -parent ${Page_0}
  ipgui::add_param $IPINST -name "numOfWeight" -parent ${Page_0}
  ipgui::add_param $IPINST -name "weightFile" -parent ${Page_0}
  ipgui::add_param $IPINST -name "weightIntWidth" -parent ${Page_0}


}

proc update_PARAM_VALUE.actType { PARAM_VALUE.actType } {
	# Procedure called to update actType when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.actType { PARAM_VALUE.actType } {
	# Procedure called to validate actType
	return true
}

proc update_PARAM_VALUE.biasFile { PARAM_VALUE.biasFile } {
	# Procedure called to update biasFile when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.biasFile { PARAM_VALUE.biasFile } {
	# Procedure called to validate biasFile
	return true
}

proc update_PARAM_VALUE.dataWidth { PARAM_VALUE.dataWidth } {
	# Procedure called to update dataWidth when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.dataWidth { PARAM_VALUE.dataWidth } {
	# Procedure called to validate dataWidth
	return true
}

proc update_PARAM_VALUE.layerNo { PARAM_VALUE.layerNo } {
	# Procedure called to update layerNo when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.layerNo { PARAM_VALUE.layerNo } {
	# Procedure called to validate layerNo
	return true
}

proc update_PARAM_VALUE.neuronNo { PARAM_VALUE.neuronNo } {
	# Procedure called to update neuronNo when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.neuronNo { PARAM_VALUE.neuronNo } {
	# Procedure called to validate neuronNo
	return true
}

proc update_PARAM_VALUE.numOfWeight { PARAM_VALUE.numOfWeight } {
	# Procedure called to update numOfWeight when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.numOfWeight { PARAM_VALUE.numOfWeight } {
	# Procedure called to validate numOfWeight
	return true
}

proc update_PARAM_VALUE.weightFile { PARAM_VALUE.weightFile } {
	# Procedure called to update weightFile when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.weightFile { PARAM_VALUE.weightFile } {
	# Procedure called to validate weightFile
	return true
}

proc update_PARAM_VALUE.weightIntWidth { PARAM_VALUE.weightIntWidth } {
	# Procedure called to update weightIntWidth when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.weightIntWidth { PARAM_VALUE.weightIntWidth } {
	# Procedure called to validate weightIntWidth
	return true
}


proc update_MODELPARAM_VALUE.layerNo { MODELPARAM_VALUE.layerNo PARAM_VALUE.layerNo } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.layerNo}] ${MODELPARAM_VALUE.layerNo}
}

proc update_MODELPARAM_VALUE.neuronNo { MODELPARAM_VALUE.neuronNo PARAM_VALUE.neuronNo } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.neuronNo}] ${MODELPARAM_VALUE.neuronNo}
}

proc update_MODELPARAM_VALUE.numOfWeight { MODELPARAM_VALUE.numOfWeight PARAM_VALUE.numOfWeight } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.numOfWeight}] ${MODELPARAM_VALUE.numOfWeight}
}

proc update_MODELPARAM_VALUE.dataWidth { MODELPARAM_VALUE.dataWidth PARAM_VALUE.dataWidth } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.dataWidth}] ${MODELPARAM_VALUE.dataWidth}
}

proc update_MODELPARAM_VALUE.weightIntWidth { MODELPARAM_VALUE.weightIntWidth PARAM_VALUE.weightIntWidth } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.weightIntWidth}] ${MODELPARAM_VALUE.weightIntWidth}
}

proc update_MODELPARAM_VALUE.actType { MODELPARAM_VALUE.actType PARAM_VALUE.actType } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.actType}] ${MODELPARAM_VALUE.actType}
}

proc update_MODELPARAM_VALUE.biasFile { MODELPARAM_VALUE.biasFile PARAM_VALUE.biasFile } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.biasFile}] ${MODELPARAM_VALUE.biasFile}
}

proc update_MODELPARAM_VALUE.weightFile { MODELPARAM_VALUE.weightFile PARAM_VALUE.weightFile } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.weightFile}] ${MODELPARAM_VALUE.weightFile}
}

