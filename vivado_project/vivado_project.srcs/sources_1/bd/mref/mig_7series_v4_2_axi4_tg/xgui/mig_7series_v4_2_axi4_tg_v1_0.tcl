# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_NBURST_SUPPORT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_BEGIN_ADDRESS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_END_ADDRESS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_EN_WRAP_TRANS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DBG_RD_STS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DBG_WR_STS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ENFORCE_RD_WR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ENFORCE_RD_WR_CMD" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ENFORCE_RD_WR_PATTERN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "EN_UPSIZER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PRBS_EADDR_MASK_POS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PRBS_SADDR_MASK_POS" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_AXI_ADDR_WIDTH { PARAM_VALUE.C_AXI_ADDR_WIDTH } {
	# Procedure called to update C_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_ADDR_WIDTH { PARAM_VALUE.C_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_DATA_WIDTH { PARAM_VALUE.C_AXI_DATA_WIDTH } {
	# Procedure called to update C_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_DATA_WIDTH { PARAM_VALUE.C_AXI_DATA_WIDTH } {
	# Procedure called to validate C_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_ID_WIDTH { PARAM_VALUE.C_AXI_ID_WIDTH } {
	# Procedure called to update C_AXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_ID_WIDTH { PARAM_VALUE.C_AXI_ID_WIDTH } {
	# Procedure called to validate C_AXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_NBURST_SUPPORT { PARAM_VALUE.C_AXI_NBURST_SUPPORT } {
	# Procedure called to update C_AXI_NBURST_SUPPORT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_NBURST_SUPPORT { PARAM_VALUE.C_AXI_NBURST_SUPPORT } {
	# Procedure called to validate C_AXI_NBURST_SUPPORT
	return true
}

proc update_PARAM_VALUE.C_BEGIN_ADDRESS { PARAM_VALUE.C_BEGIN_ADDRESS } {
	# Procedure called to update C_BEGIN_ADDRESS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_BEGIN_ADDRESS { PARAM_VALUE.C_BEGIN_ADDRESS } {
	# Procedure called to validate C_BEGIN_ADDRESS
	return true
}

proc update_PARAM_VALUE.C_END_ADDRESS { PARAM_VALUE.C_END_ADDRESS } {
	# Procedure called to update C_END_ADDRESS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_END_ADDRESS { PARAM_VALUE.C_END_ADDRESS } {
	# Procedure called to validate C_END_ADDRESS
	return true
}

proc update_PARAM_VALUE.C_EN_WRAP_TRANS { PARAM_VALUE.C_EN_WRAP_TRANS } {
	# Procedure called to update C_EN_WRAP_TRANS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_EN_WRAP_TRANS { PARAM_VALUE.C_EN_WRAP_TRANS } {
	# Procedure called to validate C_EN_WRAP_TRANS
	return true
}

proc update_PARAM_VALUE.DBG_RD_STS_WIDTH { PARAM_VALUE.DBG_RD_STS_WIDTH } {
	# Procedure called to update DBG_RD_STS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DBG_RD_STS_WIDTH { PARAM_VALUE.DBG_RD_STS_WIDTH } {
	# Procedure called to validate DBG_RD_STS_WIDTH
	return true
}

proc update_PARAM_VALUE.DBG_WR_STS_WIDTH { PARAM_VALUE.DBG_WR_STS_WIDTH } {
	# Procedure called to update DBG_WR_STS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DBG_WR_STS_WIDTH { PARAM_VALUE.DBG_WR_STS_WIDTH } {
	# Procedure called to validate DBG_WR_STS_WIDTH
	return true
}

proc update_PARAM_VALUE.ENFORCE_RD_WR { PARAM_VALUE.ENFORCE_RD_WR } {
	# Procedure called to update ENFORCE_RD_WR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ENFORCE_RD_WR { PARAM_VALUE.ENFORCE_RD_WR } {
	# Procedure called to validate ENFORCE_RD_WR
	return true
}

proc update_PARAM_VALUE.ENFORCE_RD_WR_CMD { PARAM_VALUE.ENFORCE_RD_WR_CMD } {
	# Procedure called to update ENFORCE_RD_WR_CMD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ENFORCE_RD_WR_CMD { PARAM_VALUE.ENFORCE_RD_WR_CMD } {
	# Procedure called to validate ENFORCE_RD_WR_CMD
	return true
}

proc update_PARAM_VALUE.ENFORCE_RD_WR_PATTERN { PARAM_VALUE.ENFORCE_RD_WR_PATTERN } {
	# Procedure called to update ENFORCE_RD_WR_PATTERN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ENFORCE_RD_WR_PATTERN { PARAM_VALUE.ENFORCE_RD_WR_PATTERN } {
	# Procedure called to validate ENFORCE_RD_WR_PATTERN
	return true
}

proc update_PARAM_VALUE.EN_UPSIZER { PARAM_VALUE.EN_UPSIZER } {
	# Procedure called to update EN_UPSIZER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.EN_UPSIZER { PARAM_VALUE.EN_UPSIZER } {
	# Procedure called to validate EN_UPSIZER
	return true
}

proc update_PARAM_VALUE.PRBS_EADDR_MASK_POS { PARAM_VALUE.PRBS_EADDR_MASK_POS } {
	# Procedure called to update PRBS_EADDR_MASK_POS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PRBS_EADDR_MASK_POS { PARAM_VALUE.PRBS_EADDR_MASK_POS } {
	# Procedure called to validate PRBS_EADDR_MASK_POS
	return true
}

proc update_PARAM_VALUE.PRBS_SADDR_MASK_POS { PARAM_VALUE.PRBS_SADDR_MASK_POS } {
	# Procedure called to update PRBS_SADDR_MASK_POS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PRBS_SADDR_MASK_POS { PARAM_VALUE.PRBS_SADDR_MASK_POS } {
	# Procedure called to validate PRBS_SADDR_MASK_POS
	return true
}


proc update_MODELPARAM_VALUE.C_AXI_ID_WIDTH { MODELPARAM_VALUE.C_AXI_ID_WIDTH PARAM_VALUE.C_AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_ID_WIDTH}] ${MODELPARAM_VALUE.C_AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_AXI_ADDR_WIDTH PARAM_VALUE.C_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_AXI_DATA_WIDTH PARAM_VALUE.C_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_NBURST_SUPPORT { MODELPARAM_VALUE.C_AXI_NBURST_SUPPORT PARAM_VALUE.C_AXI_NBURST_SUPPORT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_NBURST_SUPPORT}] ${MODELPARAM_VALUE.C_AXI_NBURST_SUPPORT}
}

proc update_MODELPARAM_VALUE.C_EN_WRAP_TRANS { MODELPARAM_VALUE.C_EN_WRAP_TRANS PARAM_VALUE.C_EN_WRAP_TRANS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_EN_WRAP_TRANS}] ${MODELPARAM_VALUE.C_EN_WRAP_TRANS}
}

proc update_MODELPARAM_VALUE.C_BEGIN_ADDRESS { MODELPARAM_VALUE.C_BEGIN_ADDRESS PARAM_VALUE.C_BEGIN_ADDRESS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_BEGIN_ADDRESS}] ${MODELPARAM_VALUE.C_BEGIN_ADDRESS}
}

proc update_MODELPARAM_VALUE.C_END_ADDRESS { MODELPARAM_VALUE.C_END_ADDRESS PARAM_VALUE.C_END_ADDRESS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_END_ADDRESS}] ${MODELPARAM_VALUE.C_END_ADDRESS}
}

proc update_MODELPARAM_VALUE.PRBS_EADDR_MASK_POS { MODELPARAM_VALUE.PRBS_EADDR_MASK_POS PARAM_VALUE.PRBS_EADDR_MASK_POS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PRBS_EADDR_MASK_POS}] ${MODELPARAM_VALUE.PRBS_EADDR_MASK_POS}
}

proc update_MODELPARAM_VALUE.PRBS_SADDR_MASK_POS { MODELPARAM_VALUE.PRBS_SADDR_MASK_POS PARAM_VALUE.PRBS_SADDR_MASK_POS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PRBS_SADDR_MASK_POS}] ${MODELPARAM_VALUE.PRBS_SADDR_MASK_POS}
}

proc update_MODELPARAM_VALUE.DBG_WR_STS_WIDTH { MODELPARAM_VALUE.DBG_WR_STS_WIDTH PARAM_VALUE.DBG_WR_STS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DBG_WR_STS_WIDTH}] ${MODELPARAM_VALUE.DBG_WR_STS_WIDTH}
}

proc update_MODELPARAM_VALUE.DBG_RD_STS_WIDTH { MODELPARAM_VALUE.DBG_RD_STS_WIDTH PARAM_VALUE.DBG_RD_STS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DBG_RD_STS_WIDTH}] ${MODELPARAM_VALUE.DBG_RD_STS_WIDTH}
}

proc update_MODELPARAM_VALUE.ENFORCE_RD_WR { MODELPARAM_VALUE.ENFORCE_RD_WR PARAM_VALUE.ENFORCE_RD_WR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ENFORCE_RD_WR}] ${MODELPARAM_VALUE.ENFORCE_RD_WR}
}

proc update_MODELPARAM_VALUE.ENFORCE_RD_WR_CMD { MODELPARAM_VALUE.ENFORCE_RD_WR_CMD PARAM_VALUE.ENFORCE_RD_WR_CMD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ENFORCE_RD_WR_CMD}] ${MODELPARAM_VALUE.ENFORCE_RD_WR_CMD}
}

proc update_MODELPARAM_VALUE.EN_UPSIZER { MODELPARAM_VALUE.EN_UPSIZER PARAM_VALUE.EN_UPSIZER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.EN_UPSIZER}] ${MODELPARAM_VALUE.EN_UPSIZER}
}

proc update_MODELPARAM_VALUE.ENFORCE_RD_WR_PATTERN { MODELPARAM_VALUE.ENFORCE_RD_WR_PATTERN PARAM_VALUE.ENFORCE_RD_WR_PATTERN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ENFORCE_RD_WR_PATTERN}] ${MODELPARAM_VALUE.ENFORCE_RD_WR_PATTERN}
}

