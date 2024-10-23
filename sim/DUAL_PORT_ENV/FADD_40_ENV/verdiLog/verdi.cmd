simSetSimulator "-vcssv" -exec "./simv" -args \
           "+UVM_VERDI_TRACE=UVM_AWARE+RAL+HIRE+COMPWAVE +UVM_TR_RECORD" \
           -uvmDebug on -simDelim
debImport "-i" "-simflow" "-dbdir" "./simv.daidir"
srcTBInvokeSim
verdiDockWidgetSetCurTab -dock widgetDock_<Inst._Tree>
srcHBSelect "correction_tree_N34" -win $_nTrace1
srcHBSelect "top_tb.u_FADD_N40" -win $_nTrace1
srcHBSelect "top_tb.input_if_1" -win $_nTrace1
srcHBSelect "top_tb.input_if_0" -win $_nTrace1
srcHBSelect "top_tb.input_if_0" -win $_nTrace1
srcHBSelect "top_tb.output_if" -win $_nTrace1 -add
srcHBSelect "top_tb.input_if_0" -win $_nTrace1
srcHBSelect "top_tb.output_if" -win $_nTrace1 -add
srcHBSelect "top_tb.input_if_1" -win $_nTrace1 -add
srcHBSelect "top_tb.u_FADD_N40" -win $_nTrace1
srcHBSelect "correction_tree_N34" -win $_nTrace1
srcHBSelect "correction_tree_N37" -win $_nTrace1 -add
srcHBSelect "top_tb" -win $_nTrace1 -add
srcHBSelect "uvm_custom_install_recording" -win $_nTrace1 -add
srcHBSelect "uvm_custom_install_verdi_recording" -win $_nTrace1 -add
srcSetScope -win $_nTrace1 "top_tb.u_FADD_N40" -delim "."
srcHBSelect "top_tb.u_FADD_N40" -win $_nTrace1
srcHBSelect "top_tb.u_FADD_N40" -win $_nTrace1
wvCreateWindow
wvGetSignalOpen -win $_nWave3
srcSignalView -on
srcSignalViewSelectAll -curPage
wvAddSignal -win $_nWave3 "_vcs_unit__653742487"
wvAddSignal -win $_nWave3 "/top_tb/u_FADD_N40/i_sign_a" \
           "/top_tb/u_FADD_N40/i_exp_a\[7:0\]" \
           "/top_tb/u_FADD_N40/i_frac_a\[39:0\]" "/top_tb/u_FADD_N40/i_sign_b" \
           "/top_tb/u_FADD_N40/i_exp_b\[7:0\]" \
           "/top_tb/u_FADD_N40/i_frac_b\[39:0\]" "/top_tb/u_FADD_N40/o_sign_c" \
           "/top_tb/u_FADD_N40/o_exp_c\[7:0\]" \
           "/top_tb/u_FADD_N40/o_frac_c\[39:0\]" \
           "/top_tb/u_FADD_N40/FRAC_WIDTH\[31:0\]" \
           "/top_tb/u_FADD_N40/EXP_WIDTH\[31:0\]" \
           "/top_tb/u_FADD_N40/exp_close\[7:0\]" \
           "/top_tb/u_FADD_N40/exp_f\[7:0\]" \
           "/top_tb/u_FADD_N40/exp_far\[7:0\]" \
           "/top_tb/u_FADD_N40/diff_abs\[8:0\]" \
           "/top_tb/u_FADD_N40/diff_a_sub_b\[8:0\]" \
           "/top_tb/u_FADD_N40/diff_b_sub_a\[8:0\]" \
           "/top_tb/u_FADD_N40/elarge_op\[39:0\]" \
           "/top_tb/u_FADD_N40/esmall_op\[39:0\]" \
           "/top_tb/u_FADD_N40/close_result\[39:0\]" \
           "/top_tb/u_FADD_N40/far_result\[39:0\]" \
           "/top_tb/u_FADD_N40/exp_a_lt_b" "/top_tb/u_FADD_N40/exp_a_neq_b" \
           "/top_tb/u_FADD_N40/sign_diff" "/top_tb/u_FADD_N40/path_sel" \
           "/top_tb/u_FADD_N40/far_sign" "/top_tb/u_FADD_N40/close_sign"
wvSetPosition -win $_nWave3 {("G1" 0)}
wvSetPosition -win $_nWave3 {("G1" 27)}
wvSetPosition -win $_nWave3 {("G1" 27)}
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 5
srcTBRunSim
wvScrollDown -win $_nWave3 5
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
srcTBSimReset
srcTBRunSim
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
srcTBTBHTogg
srcTBHier -treeSel "uvm_test_top.vir_sqr"
srcTBHier -treeSel "uvm_test_top.vir_sqr"
srcTBHier -treeSel "uvm_test_top.vir_sqr"
srcTBHier -treeSel "uvm_test_top.vir_sqr"
srcTBHier -treeSel "uvm_test_top.vir_sqr"
srcTBHier -showTreeDef
srcTBHier -treeSel "uvm_test_top.vir_sqr.req_fifo"
srcTBHier -treeSel "uvm_test_top.vir_sqr.rsp_export"
srcTBHier -treeSel "uvm_test_top.vir_sqr.seq_item_export"
srcTBHier -showTreeDef
srcTBHier -treeSel "uvm_test_top.f_scoreboard"
srcTBAddToWaveform -wave_win $_nWave3
wvSelectSignal -win $_nWave3 {( "uvm_test_top/f_scoreboard" 1 )} 
wvExpandBus -win $_nWave3 {("uvm_test_top/f_scoreboard" 1)}
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
wvScrollUp -win $_nWave3 1
wvSetCursor -win $_nWave3 255637.677345 -snap {("f_scoreboard" 15)}
wvSelectSignal -win $_nWave3 {( "uvm_test_top/f_scoreboard" 16 )} 
wvScrollDown -win $_nWave3 2
wvSelectSignal -win $_nWave3 {( "uvm_test_top/f_scoreboard" 22 )} 
wvSelectSignal -win $_nWave3 {( "uvm_test_top/f_scoreboard" 23 )} 
srcTBHier -treeSel "uvm_test_top.f_scoreboard.act_port"
srcTBHier -treeSel "uvm_test_top.f_scoreboard.exp_port"
wvSelectSignal -win $_nWave3 {( "uvm_test_top/f_scoreboard" 21 )} 
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "uvm_test_top/f_scoreboard" 23 )} 
wvSelectSignal -win $_nWave3 {( "uvm_test_top/f_scoreboard" 23 )} 
wvScrollUp -win $_nWave3 14
wvSelectGroup -win $_nWave3 {uvm_test_top/f_scoreboard}
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("uvm_test_top" 0)}
uvmCreateSeqWin
uvmSeqWinQuickFilterOn
uvmSeqWinOnClick -row 1 -parent_rows 0
uvmSeqWinOnClick -row 0 -parent_rows 0
uvmSeqWinOnClick -row 5 -parent_rows 0
uvmSeqWinOnClick -row 2 -parent_rows 0
uvmSeqWinOnClick -row 0 -parent_rows 0
uvmSeqWinOnClick -row 1 -parent_rows 0
uvmSeqWinOnClick -row 2 -parent_rows 0
uvmSeqWinOnClick -row 3 -parent_rows 0
uvmSeqWinOnClick -row 4 -parent_rows 0
uvmSeqWinOnClick -row 5 -parent_rows 0
uvmSeqWinOnClick -row 6 -parent_rows 0
uvmSeqWinOnClick -row 7 -parent_rows 0
uvmSeqWinOnClick -row 8 -parent_rows 0
uvmSeqWinOnClick -row 7 -parent_rows 0
uvmSeqWinOnClick -row 6 -parent_rows 0
uvmSeqWinOnClick -row 5 -parent_rows 0
uvmSeqWinOnClick -row 4 -parent_rows 0
uvmSeqWinOnClick -row 3 -parent_rows 0
uvmSeqWinOnClick -row 2 -parent_rows 0
uvmSeqWinOnClick -row 1 -parent_rows 0
uvmSeqWinOnClick -row 0 -parent_rows 0
uvmSeqWinOnClick -row 0 -parent_rows
uvmSeqWinShowClassDefInSource
uvmSeqWinOnClick -row 4 -parent_rows 0
uvmCloseSeqWin
uvmCreateSeqWin
uvmSeqWinQuickFilterOn
uvmSeqWinOnClick -row 0 -parent_rows
uvmSeqWinOnClick -row 0 -parent_rows
srcTBInsertObject -win $_nTrace1 -tab 1 -object "\$unit::f41_sequence@1"
uvmSeqWinAddSeqWatches1
srcTBDVExpand -win $_nTrace1 -tab 1 -item {1}
srcTBDVSelect -tab 1 -range {0-0} 
srcTBDVSelect -tab 1 -range {0 9-9} 
srcTBDVExpand -win $_nTrace1 -tab 1 -item {1 9}
srcTBDVCollapse -win $_nTrace1 -tab 1 -item {1 9}
srcTBDVExpand -win $_nTrace1 -tab 1 -item {1 10}
srcTBDVCollapse -win $_nTrace1 -tab 1 -item {1 10}
srcTBDVSelect -tab 1 -range {0 9-9} 
srcTBDVAddSignalToWave -win $_nTrace1 -tab 1 -item {1 9} -win $_nWave3
verdiDockWidgetSetCurTab -dock windowDock_nWave_3
wvSelectSignal -win $_nWave3 {( "uvm_test_top" 1 )} 
wvSelectSignal -win $_nWave3 {( "uvm_test_top" 1 )} 
wvSelectSignal -win $_nWave3 {( "uvm_test_top" 1 )} 
srcTBDVExpand -win $_nTrace1 -tab 1 -item {1 9}
srcTBDVSelect -tab 1 -range {0 9-9} {0 9 0-0} 
srcTBDVSelect -tab 1 -range {0 9-9} 
srcTBDVSelect -tab 1 -range {0 9-9} {0 9 0-0} 
srcTBDVSelect -tab 1 -range {0 9 1-1} 
srcTBDVSelect -tab 1 -range {0 9 1-1} {0 9 0-0} 
srcTBDVSelect -tab 1 -range {0 9 1-1} {0 9 0-0} {0 9 2-2} 
srcTBDVSelect -tab 1 -range {0 9 1-1} {0 9 0-0} {0 9 2-2} {0 9 3-3} 
srcTBDVSelect -tab 1 -range {0 9 1-1} {0 9 0-0} {0 9 2-2} {0 9 3-3} {0 9 5-5} 
srcTBDVSelect -tab 1 -range \
           {0 9 1-1} {0 9 0-0} {0 9 2-2} {0 9 3-3} {0 9 5-5} {0 9 4-4} 
srcTBDVSelect -tab 1 -range \
           {0 9 1-1} {0 9 0-0} {0 9 2-2} {0 9 3-3} {0 9 5-5} {0 9 4-4} {0 9 6-6} 
srcTBDVSelect -tab 1 -range \
           {0 9 1-1} {0 9 0-0} {0 9 2-2} {0 9 3-3} {0 9 5-5} {0 9 4-4} {0 9 6-6} {0 9 8-8} 
srcTBDVSelect -tab 1 -range \
           {0 9 1-1} {0 9 0-0} {0 9 2-2} {0 9 3-3} {0 9 5-5} {0 9 4-4} {0 9 6-6} {0 9 8-8} {0 9 7-7} 
srcTBDVSelect -tab 1 -range \
           {0 9 1-1} {0 9 0-0} {0 9 2-2} {0 9 3-3} {0 9 5-5} {0 9 4-4} {0 9 6-6} {0 9 8-8} {0 9 7-7} {0 9 9-9} 
srcTBDVSelect -tab 1 -range \
           {0 9 1-1} {0 9 0-0} {0 9 2-2} {0 9 3-3} {0 9 5-5} {0 9 4-4} {0 9 6-6} {0 9 8-8} {0 9 7-7} {0 9 9-9} {0 9 12-12} 
srcTBDVSelect -tab 1 -range {0 9 13-13} 
srcTBDVExpand -win $_nTrace1 -tab 1 -item {1 9 11}
srcTBDVCollapse -win $_nTrace1 -tab 1 -item {1 9 11}
srcTBDVSelect -tab 1 -range {0 9 11-11} 
srcTBDVSelect -tab 1 -range {0 9 11-11} {0 9 12-12} 
srcTBDVSelect -tab 1 -range {0 9 11-11} {0 9 12-12} {0 9 13-13} 
srcTBDVSelect -tab 1 -range {0 9 11-11} {0 9 12-12} {0 9 13-13} {0 9 14-14} 
srcTBDVSelect -tab 1 -range \
           {0 9 11-11} {0 9 12-12} {0 9 13-13} {0 9 14-14} {0 9 15-15} 
srcTBDVSelect -tab 1 -range \
           {0 9 11-11} {0 9 12-12} {0 9 13-13} {0 9 14-14} {0 9 15-15} {0 9 16-16} 
srcTBDVSelect -tab 1 -range \
           {0 9 11-11} {0 9 12-12} {0 9 13-13} {0 9 14-14} {0 9 15-15} {0 9 16-16} {0 9 17-17} 
srcTBDVSelect -tab 1 -range \
           {0 9 11-11} {0 9 12-12} {0 9 13-13} {0 9 14-14} {0 9 15-15} {0 9 16-16} {0 9 17-17} {0 9 32-32} 
srcTBDVSelect -tab 1 -range \
           {0 9 11-11} {0 9 12-12} {0 9 13-13} {0 9 14-14} {0 9 15-15} {0 9 16-16} {0 9 17-17} 
srcTBDVSelect -tab 1 -range \
           {0 9 11-11} {0 9 12-12} {0 9 13-13} {0 9 14-14} {0 9 15-15} {0 9 16-16} {0 9 17-17} {0 9 30-30} 
srcTBDVSelect -tab 1 -range \
           {0 9 11-11} {0 9 12-12} {0 9 13-13} {0 9 14-14} {0 9 15-15} {0 9 16-16} {0 9 17-17} {0 9 30-30} {0 9 31-31} 
srcTBDVSelect -tab 1 -range \
           {0 9 11-11} {0 9 12-12} {0 9 13-13} {0 9 14-14} {0 9 15-15} {0 9 16-16} {0 9 17-17} {0 9 30-30} {0 9 31-31} {0 9 32-32} 
srcTBDVSelect -tab 1 -range \
           {0 9 11-11} {0 9 12-12} {0 9 13-13} {0 9 14-14} {0 9 15-15} {0 9 16-16} {0 9 17-17} {0 9 31-31} {0 9 32-32} 
srcTBDVSelect -tab 1 -range \
           {0 9 11-11} {0 9 12-12} {0 9 13-13} {0 9 14-14} {0 9 15-15} {0 9 16-16} {0 9 17-17} {0 9 31-31} {0 9 32-32} {0 9 0-0} 
srcTBDVSelect -tab 1 -range \
           {0 9 11-11} {0 9 12-12} {0 9 13-13} {0 9 14-14} {0 9 15-15} {0 9 16-16} {0 9 17-17} {0 9 31-31} {0 9 32-32} {0 9 0-0} {0 9 1-1} 
srcTBDVSelect -tab 1 -range \
           {0 9 11-11} {0 9 12-12} {0 9 13-13} {0 9 14-14} {0 9 15-15} {0 9 16-16} {0 9 17-17} {0 9 31-31} {0 9 32-32} {0 9 0-0} {0 9 1-1} {0 9 2-2} 
wvSelectGroup -win $_nWave3 {G2}
wvSetPosition -win $_nWave3 {("G1" 0)}
wvScrollDown -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "uvm_test_top" 1 )} 
wvSelectGroup -win $_nWave3 {G2}
srcTBDVSelect -tab 1 -range {0 9 0-0} 
srcTBDVSelect -tab 1 -range {0 9-9} 
wvSelectSignal -win $_nWave3 {( "uvm_test_top" 1 )} 
wvSelectSignal -win $_nWave3 {( "uvm_test_top" 1 )} 
srcTBSimReset
srcTBRunSim
wvSetCursor -win $_nWave3 1204475.499953 -snap {("uvm_test_top" 1)}
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvSetCursor -win $_nWave3 14429.387760 -snap {("uvm_test_top" 1)}
wvSetCursor -win $_nWave3 25972.897968 -snap {("uvm_test_top" 1)}
wvSetCursor -win $_nWave3 14954.092769 -snap {("uvm_test_top" 1)}
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvSetCursor -win $_nWave3 33967.903030 -snap {("G2" 0)}
wvSetCursor -win $_nWave3 41746.812121 -snap {("G2" 0)}
wvSetCursor -win $_nWave3 44858.375758 -snap {("uvm_test_top" 1)}
verdiWindowBeWindow -win $_nWave3
wvResizeWindow -win $_nWave3 1910 148 1920 877
verdiWindowBeDocked -win $_nWave3
srcSignalView -on
verdiDockWidgetDisplay -dock widgetDock_<Signal_List>
srcSignalView -off
srcSignalView -on
verdiDockWidgetDisplay -dock widgetDock_<Signal_List>
verdiDockWidgetRestore -dock windowDock_nWave_3
srcTBDVCollapse -win $_nTrace1 -tab 1 -item {1}
srcTBDVExpand -win $_nTrace1 -tab 1 -item {1}
srcTBDVSelect -tab 1 -range {0 10-10} 
wvScrollDown -win $_nWave3 10
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "uvm_test_top" 1 )} 
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "uvm_test_top" 1 )} 
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvSetCursor -win $_nWave3 3701.584682 -snap {("uvm_test_top" 1)}
srcTBDVSelect -tab 1 -range {0 14-14} 
srcTBDVCollapse -win $_nTrace1 -tab 1 -item {1}
srcTBDVSelect -tab 1 -range {0-0} 
srcTBDVExpand -win $_nTrace1 -tab 1 -item {1}
srcTBDVSelect -tab 1 -range {0 0-53} {0-0} 
uvmSeqWinOnClick -row 0 -parent_rows
uvmSeqWinOnClick -row 0 -parent_rows 0
uvmSeqWinOnClick -row 0 -parent_rows
srcTBDVSelect -tab 1 -range {0 10-10} 
srcTBDVExpand -win $_nTrace1 -tab 1 -item {1 9}
srcTBDVSelect -tab 1 -range {0 9 0-0} 
srcTBDVSelect -tab 1 -range {0 9 0-0} {0 9 1-1} 
srcTBDVSelect -tab 1 -range {0 9 0-0} {0 9 1-1} {0 9 2-2} 
srcTBDVSelect -tab 1 -range {0 9 0-0} {0 9 1-1} {0 9 2-2} {0 9 12-12} 
srcTBDVSelect -tab 1 -range \
           {0 9 0-0} {0 9 1-1} {0 9 2-2} {0 9 12-12} {0 9 13-13} 
srcTBDVSelect -tab 1 -range \
           {0 9 0-0} {0 9 1-1} {0 9 2-2} {0 9 12-12} {0 9 13-13} {0 9 14-14} 
srcTBDVSelect -tab 1 -range \
           {0 9 0-0} {0 9 1-1} {0 9 2-2} {0 9 12-12} {0 9 13-13} {0 9 14-14} {0 9 21-21} 
srcTBDVSelect -tab 1 -range \
           {0 9 0-0} {0 9 1-1} {0 9 2-2} {0 9 12-12} {0 9 13-13} {0 9 14-14} {0 9 21-21} {0 9 20-20} 
srcTBDVSelect -tab 1 -range \
           {0 9 0-0} {0 9 1-1} {0 9 2-2} {0 9 12-12} {0 9 13-13} {0 9 14-14} {0 9 21-21} {0 9 20-20} {0 9 31-31} 
srcTBDVSelect -tab 1 -range \
           {0 9 0-0} {0 9 1-1} {0 9 2-2} {0 9 12-12} {0 9 13-13} {0 9 14-14} {0 9 21-21} {0 9 20-20} {0 9 31-31} {0 9 32-32} 
srcTBDVSelect -tab 1 -range \
           {0 9 0-0} {0 9 1-1} {0 9 2-2} {0 9 12-12} {0 9 13-13} {0 9 14-14} {0 9 21-21} {0 9 20-20} {0 9 31-31} {0 9 32-32} {0 9 16-16} 
srcTBDVSelect -tab 1 -range \
           {0 9 0-0} {0 9 1-1} {0 9 2-2} {0 9 12-12} {0 9 13-13} {0 9 14-14} {0 9 21-21} {0 9 20-20} {0 9 31-31} {0 9 32-32} {0 9 16-16} {0 9 15-15} 
srcTBDVSelect -tab 1 -range \
           {0 9 0-0} {0 9 1-1} {0 9 2-2} {0 9 12-12} {0 9 13-13} {0 9 14-14} {0 9 21-21} {0 9 20-20} {0 9 31-31} {0 9 32-32} {0 9 15-15} 
srcTBDVSelect -tab 1 -range \
           {0 9 0-0} {0 9 1-1} {0 9 2-2} {0 9 12-12} {0 9 13-13} {0 9 14-14} {0 9 21-21} {0 9 20-20} {0 9 31-31} {0 9 32-32} {0 9 15-15} {0 9 16-16} 
srcTBDVSelect -tab 1 -range \
           {0 9 0-0} {0 9 1-1} {0 9 2-2} {0 9 12-12} {0 9 13-13} {0 9 14-14} {0 9 21-21} {0 9 20-20} {0 9 31-31} {0 9 32-32} {0 9 15-15} {0 9 16-16} {0 9 17-17} 
srcTBDVSelect -tab 1 -range \
           {0 9 0-0} {0 9 1-1} {0 9 2-2} {0 9 12-12} {0 9 13-13} {0 9 14-14} {0 9 21-21} {0 9 20-20} {0 9 31-31} {0 9 32-32} {0 9 15-15} {0 9 16-16} {0 9 17-17} {0 9 11-11} 
srcTBDVAddSignalToWave -win $_nTrace1 -tab 1 -item {1 9 0} -win $_nWave3
srcTBDVAddSignalToWave -win $_nTrace1 -tab 1 -item {1 9 1} -win $_nWave3
srcTBDVAddSignalToWave -win $_nTrace1 -tab 1 -item {1 9 2} -win $_nWave3
srcTBDVAddSignalToWave -win $_nTrace1 -tab 1 -item {1 9 12} -win $_nWave3
srcTBDVAddSignalToWave -win $_nTrace1 -tab 1 -item {1 9 13} -win $_nWave3
srcTBDVAddSignalToWave -win $_nTrace1 -tab 1 -item {1 9 14} -win $_nWave3
srcTBDVAddSignalToWave -win $_nTrace1 -tab 1 -item {1 9 21} -win $_nWave3
srcTBDVAddSignalToWave -win $_nTrace1 -tab 1 -item {1 9 20} -win $_nWave3
srcTBDVAddSignalToWave -win $_nTrace1 -tab 1 -item {1 9 31} -win $_nWave3
srcTBDVAddSignalToWave -win $_nTrace1 -tab 1 -item {1 9 32} -win $_nWave3
srcTBDVAddSignalToWave -win $_nTrace1 -tab 1 -item {1 9 15} -win $_nWave3
srcTBDVAddSignalToWave -win $_nTrace1 -tab 1 -item {1 9 16} -win $_nWave3
srcTBDVAddSignalToWave -win $_nTrace1 -tab 1 -item {1 9 17} -win $_nWave3
srcTBDVAddSignalToWave -win $_nTrace1 -tab 1 -item {1 9 11} -win $_nWave3
wvScrollDown -win $_nWave3 10
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "uvm_test_top" 1 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 14)}
wvScrollUp -win $_nWave3 19
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
srcTBSimReset
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
srcTBRunSim
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvSetCursor -win $_nWave3 171289.537713 -snap {("G1" 12)}
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvSetCursor -win $_nWave3 200875.912409 -snap {("G1" 23)}
verdiDockWidgetHide -dock windowDock_nWave_3
srcTBTBHTogg -off
srcTBObjectBrowser -treeExpand "uvm_custom_install_verdi_recording"
srcTBObjectBrowser -treeExpand "uvm_custom_install_recording"
srcTBObjectBrowser -treeExpand "uvm_custom_install_recording."
uvmCreateFactWin
uvmFactWinOICOn
uvmFactWinQuickFilterOn
uvmFactWinClick -row 5
uvmFactWinClick -row 4
uvmFactWinClick -row 8
uvmFactWinClick -row 8
uvmFactWinClick -row 8
uvmCreateRegisterWin
uvmCreateRsrcWin
uvmRsrcWinAccessHistoryOn
uvmRsrcWinQuickFilterOn
uvmCreatePhaseWin
verdiDockWidgetSetCurTab -dock widgetDock_<Class._Tree>
verdiDockWidgetSetCurTab -dock widgetDock_<Stack>
srcTBStackBrowser -select "top_tb@0.top_tb@242" -active
srcTBShowSourceCode -win $_nTrace1 -file "top_tb.sv" -line 28 -frameId "242:0:1"
srcSelect -win $_nTrace1 -range {28 28 1 8 1 1}
srcTBStackBrowser -active -activate "top_tb@0.top_tb@242"
srcTBStackBrowser -select "top_tb@0.top_tb@242.run_test@242" -active
srcTBStackBrowser -select \
           "top_tb@0.top_tb@242.run_test@242.uvm_root::run_test@242" -active
srcTBStackBrowser -select "top_tb@0.top_tb@242.run_test@242" -active
srcTBDVExpand -win $_nTrace1 -tab 0 -item {3}
srcTBDVExpand -win $_nTrace1 -tab 0 -item {3 38}
srcTBDVSelect -tab 0 -range {2 8-8} 
srcTBDVExpand -win $_nTrace1 -tab 0 -item {3 0}
srcTBDVSelect -tab 0 -range {2 39-39} 
srcTBDVShowDefine -win $_nTrace1 -tab 0
srcTBDVDC -win $_nTrace1 -tab 0
srcTBDVShowDefine -win $_nTrace1 -tab 0
srcTBDVDC -win $_nTrace1 -tab 0
verdiDockWidgetSetCurTab -dock widgetDock_<Signal_List>
srcHBSelect "uvm_custom_install_recording" -win $_nTrace1
verdiDockWidgetSetCurTab -dock widgetDock_<Decl._Tree>
srcTBBTreeSelect -win $_nTrace1 -path "uvm_pkg"
verdiDockWidgetUndock -dock widgetDock_<Watch>
verdiDockWidgetHide -dock widgetDock_<Watch>
srcTBSetHiddenView -view WatchView
uvmClosePhaseWin
uvmCloseRsrcWin
uvmCloseRegisterWin
uvmCloseFactWin
uvmCloseSeqWin
verdiDockWidgetSetCurTab -dock windowDock_OneSearch
verdiDockWidgetSetCurTab -dock widgetDock_<Message>
verdiDockWidgetSetCurTab -dock windowDock_OneSearch
verdiDockWidgetSetCurTab -dock windowDock_InteractiveConsole_2
uvmCreateSeqWin
uvmSeqWinQuickFilterOn
uvmSeqWinOnClick -row 0 -parent_rows
uvmSeqWinShowClassDefInSource
uvmSeqWinShowClassDefInSource
uvmSeqWinOnClick -row 0 -parent_rows
uvmSeqWinOnClick -row 0 -parent_rows
srcTBInsertObject -win $_nTrace1 -tab 1 -object "\$unit::f41_sequence@1"
uvmSeqWinAddSeqWatches1
srcTBDVExpand -win $_nTrace1 -tab 1 -item {1 10}
srcTBDVExpand -win $_nTrace1 -tab 1 -item {1 9}
srcTBDVCollapse -win $_nTrace1 -tab 1 -item {1 9}
srcTBDVCollapse -win $_nTrace1 -tab 1 -item {1 10}
srcTBDVExpand -win $_nTrace1 -tab 1 -item {1 10}
srcTBDVExpand -win $_nTrace1 -tab 1 -item {1 9}
srcTBDVCollapse -win $_nTrace1 -tab 1 -item {1 9}
srcTBDVCollapse -win $_nTrace1 -tab 1 -item {1 10}
srcTBDVSelect -tab 1 -range {0 10-10} 
srcTBDVSelect -tab 1 -range {0 9-9} 
srcTBDVAddSignalToWave -win $_nTrace1 -tab 1 -item {1 9} -win $_nWave3
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 16
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "G1" 6 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 15)}
wvSetPosition -win $_nWave3 {("G1" 14)}
wvSelectSignal -win $_nWave3 {( "G1" 5 )} 
wvSelectSignal -win $_nWave3 {( "G1" 6 )} 
wvSelectAll -win $_nWave3
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 0)}
uvmSeqWinOnClick -row 1 -parent_rows 0
uvmSeqWinShowClassDefInSource
uvmSeqWinOnClick -row 0 -parent_rows 0
uvmSeqWinOnClick -row 0 -parent_rows 0
uvmSeqWinOnClick -row 1 -parent_rows 0
uvmSeqWinOnClick -row 1 -parent_rows 0
srcTBInsertObject -win $_nTrace1 -tab 1 -object "\$unit::f_transaction@7"
uvmSeqWinAddSeqWatches1
srcTBDVSelect -tab 1 -range {0 9-9} 
srcTBDVAddSignalToWave -win $_nTrace1 -tab 1 -item {1 9} -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G1" 1 )} 
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomOut -win $_nWave3
srcTBDVExpand -win $_nTrace1 -tab 1 -item {1 9}
srcTBDVCollapse -win $_nTrace1 -tab 1 -item {1 9}
srcTBDVExpand -win $_nTrace1 -tab 1 -item {1 9}
srcTBDVSelect -tab 1 -range {0 9-9} {0 9 12-12} 
srcTBDVSelect -tab 1 -range {0 9-9} {0 9 12-12} {0 9 11-11} 
srcTBDVSelect -tab 1 -range {0 9-9} {0 9 12-12} {0 9 11-11} {0 9 13-13} 
srcTBDVSelect -tab 1 -range \
           {0 9-9} {0 9 12-12} {0 9 11-11} {0 9 13-13} {0 9 14-14} 
srcTBDVSelect -tab 1 -range \
           {0 9-9} {0 9 12-12} {0 9 11-11} {0 9 13-13} {0 9 14-14} {0 9 15-15} 
srcTBDVSelect -tab 1 -range \
           {0 9-9} {0 9 12-12} {0 9 11-11} {0 9 13-13} {0 9 14-14} {0 9 15-15} {0 9 16-16} 
srcTBDVSelect -tab 1 -range \
           {0 9-9} {0 9 12-12} {0 9 11-11} {0 9 13-13} {0 9 14-14} {0 9 15-15} {0 9 16-16} {0 9 17-17} 
srcTBDVSelect -tab 1 -range \
           {0 9-9} {0 9 12-12} {0 9 11-11} {0 9 13-13} {0 9 14-14} {0 9 15-15} {0 9 16-16} {0 9 17-17} {0 9 2-2} 
srcTBDVSelect -tab 1 -range \
           {0 9-9} {0 9 12-12} {0 9 11-11} {0 9 13-13} {0 9 14-14} {0 9 15-15} {0 9 16-16} {0 9 17-17} 
srcTBDVSelect -tab 1 -range \
           {0 9-9} {0 9 12-12} {0 9 11-11} {0 9 13-13} {0 9 14-14} {0 9 15-15} {0 9 16-16} {0 9 17-17} {0 9 1-1} 
srcTBDVSelect -tab 1 -range \
           {0 9-9} {0 9 12-12} {0 9 11-11} {0 9 13-13} {0 9 14-14} {0 9 15-15} {0 9 16-16} {0 9 17-17} {0 9 1-1} {0 9 0-0} 
srcTBDVSelect -tab 1 -range \
           {0 9-9} {0 9 12-12} {0 9 11-11} {0 9 13-13} {0 9 14-14} {0 9 15-15} {0 9 16-16} {0 9 17-17} {0 9 1-1} {0 9 0-0} {0 9 2-2} 
wvCreateWindow
wvSetPosition -win $_nWave11 {("G1" 0)}
wvOpenFile -win $_nWave11 \
           {/media/mrx/share_space/TRI_ANGLE/sim/DUAL_PORT_ENV/FADD_40_ENV/inter.fsdb}
srcTBDVAddSignalToWave -win $_nTrace1 -tab 1 -item {1 9} -win $_nWave11
srcTBDVAddSignalToWave -win $_nTrace1 -tab 1 -item {1 9 12} -win $_nWave11
srcTBDVAddSignalToWave -win $_nTrace1 -tab 1 -item {1 9 11} -win $_nWave11
srcTBDVAddSignalToWave -win $_nTrace1 -tab 1 -item {1 9 13} -win $_nWave11
srcTBDVAddSignalToWave -win $_nTrace1 -tab 1 -item {1 9 14} -win $_nWave11
srcTBDVAddSignalToWave -win $_nTrace1 -tab 1 -item {1 9 15} -win $_nWave11
srcTBDVAddSignalToWave -win $_nTrace1 -tab 1 -item {1 9 16} -win $_nWave11
srcTBDVAddSignalToWave -win $_nTrace1 -tab 1 -item {1 9 17} -win $_nWave11
srcTBDVAddSignalToWave -win $_nTrace1 -tab 1 -item {1 9 1} -win $_nWave11
srcTBDVAddSignalToWave -win $_nTrace1 -tab 1 -item {1 9 0} -win $_nWave11
srcTBDVAddSignalToWave -win $_nTrace1 -tab 1 -item {1 9 2} -win $_nWave11
wvZoomOut -win $_nWave11
wvZoomOut -win $_nWave11
wvZoomOut -win $_nWave11
wvZoomOut -win $_nWave11
wvZoomOut -win $_nWave11
wvZoomOut -win $_nWave11
verdiDockWidgetDock -dock widgetDock_<Watch>
uvmSeqWinOnClick -row 0 -parent_rows
uvmSeqWinOnClick -row 0 -parent_rows
uvmSeqWinShowClassDefInSource
srcTBDVSelect -tab 1 -range {0 9 7-7} 
srcTBDVSelect -tab 1 -range {0 9 1-1} 
wvSetCursor -win $_nWave11 34.314465 -snap {("G1" 4)}
uvmCloseSeqWin
debExit
