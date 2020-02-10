vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_std.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/ddr_mig_sim.v" \
"../../../../../ip/Ram2DdrXadc_RefComp/ipcore_dir/ddr/user_design/rtl/ddr.v" \


vlog -work xil_defaultlib \
"glbl.v"
