vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_std.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ddr_mig_sim.v" \
"../../../../riscv_core_vivado_project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ddr.v" \


vlog -work xil_defaultlib \
"glbl.v"

