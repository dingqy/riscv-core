vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 \
"D:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_addr_decode.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_read.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg_bank.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_top.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_write.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_ar_channel.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_aw_channel.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_b_channel.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_arbiter.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_fsm.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_translator.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_fifo.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_incr_cmd.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_r_channel.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_simple_fifo.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wrap_cmd.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wr_cmd_fsm.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_w_channel.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axic_register_slice.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_register_slice.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_upsizer.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_a_upsizer.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_and.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_and.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_or.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_or.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_command_fifo.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel_static.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_r_upsizer.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_w_upsizer.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_axi.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/mig_7series_0_mig_sim.v" \
"../../../../vivado_project.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/mig_7series_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

