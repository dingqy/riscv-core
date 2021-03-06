set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports clk_in1]
create_clock -period 10.000 -name sys_clk -waveform {0.000 5.000} -add [get_ports clk_in1]

set_property PACKAGE_PIN J15 [get_ports {selection[0]}]
set_property PACKAGE_PIN L16 [get_ports {selection[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports selection]

set_property PACKAGE_PIN H17 [get_ports {ram_dq_o_output1[0]}]
set_property PACKAGE_PIN K15 [get_ports {ram_dq_o_output1[1]}]
set_property PACKAGE_PIN J13 [get_ports {ram_dq_o_output1[2]}]
set_property PACKAGE_PIN N14 [get_ports {ram_dq_o_output1[3]}]
set_property PACKAGE_PIN R18 [get_ports {ram_dq_o_output1[4]}]
set_property PACKAGE_PIN V17 [get_ports {ram_dq_o_output1[5]}]
set_property PACKAGE_PIN U17 [get_ports {ram_dq_o_output1[6]}]
set_property PACKAGE_PIN U16 [get_ports {ram_dq_o_output1[7]}]
set_property PACKAGE_PIN V16 [get_ports {ram_dq_o_output1[8]}]
set_property PACKAGE_PIN T15 [get_ports {ram_dq_o_output1[9]}]
set_property PACKAGE_PIN U14 [get_ports {ram_dq_o_output1[10]}]
set_property PACKAGE_PIN T16 [get_ports {ram_dq_o_output1[11]}]
set_property PACKAGE_PIN V15 [get_ports {ram_dq_o_output1[12]}]
set_property PACKAGE_PIN V14 [get_ports {ram_dq_o_output1[13]}]
set_property PACKAGE_PIN V12 [get_ports {ram_dq_o_output1[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports ram_dq_o_output1]

set_property PACKAGE_PIN V10 [get_ports resetn]
set_property IOSTANDARD LVCMOS33 [get_ports resetn]

set_property PACKAGE_PIN V11 [get_ports locked]
set_property IOSTANDARD LVCMOS33 [get_ports locked]

