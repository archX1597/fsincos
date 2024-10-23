debImport "-2001" "-top_tb" "-f" "rtl_list.f"
debLoadSimResult \
           /home/master/euclide_project/Triangle_New_1/sim/SINGLE_PORT_ENV/TOP_TB_ENV/tb.fsdb
wvCreateWindow
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/ZERO_NORMAL"
verdiSetActWin -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/ZERO_NORMAL/RESULT_SIGN_FLIP} \
{/ZERO_NORMAL/X_ZERO_FLAG} \
{/ZERO_NORMAL/i_RESULT_SIGN_FLIP} \
{/ZERO_NORMAL/i_X_ZERO_FLAG} \
{/ZERO_NORMAL/i_o_exp_a_compressed\[7:0\]} \
{/ZERO_NORMAL/i_o_frac_a_compressed\[31:0\]} \
{/ZERO_NORMAL/i_o_sign_a_compressed} \
{/ZERO_NORMAL/i_o_sincos_compressed} \
{/ZERO_NORMAL/o_exp_a_compressed\[7:0\]} \
{/ZERO_NORMAL/o_frac_a_compressed\[31:0\]} \
{/ZERO_NORMAL/o_sign_a_compressed} \
{/ZERO_NORMAL/o_sincos_compressed} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/ZERO_NORMAL/RESULT_SIGN_FLIP} \
{/ZERO_NORMAL/X_ZERO_FLAG} \
{/ZERO_NORMAL/i_RESULT_SIGN_FLIP} \
{/ZERO_NORMAL/i_X_ZERO_FLAG} \
{/ZERO_NORMAL/i_o_exp_a_compressed\[7:0\]} \
{/ZERO_NORMAL/i_o_frac_a_compressed\[31:0\]} \
{/ZERO_NORMAL/i_o_sign_a_compressed} \
{/ZERO_NORMAL/i_o_sincos_compressed} \
{/ZERO_NORMAL/o_exp_a_compressed\[7:0\]} \
{/ZERO_NORMAL/o_frac_a_compressed\[31:0\]} \
{/ZERO_NORMAL/o_sign_a_compressed} \
{/ZERO_NORMAL/o_sincos_compressed} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvGetSignalClose -win $_nWave2
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectAll -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectStuckSignals -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/uvm_custom_install_recording"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/_vcs_msglog"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/output_if"
wvSetPosition -win $_nWave2 {("G1" 24)}
wvSetPosition -win $_nWave2 {("G1" 24)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/ZERO_NORMAL/RESULT_SIGN_FLIP} \
{/ZERO_NORMAL/X_ZERO_FLAG} \
{/ZERO_NORMAL/i_RESULT_SIGN_FLIP} \
{/ZERO_NORMAL/i_X_ZERO_FLAG} \
{/ZERO_NORMAL/i_o_exp_a_compressed\[7:0\]} \
{/ZERO_NORMAL/i_o_frac_a_compressed\[31:0\]} \
{/ZERO_NORMAL/i_o_sign_a_compressed} \
{/ZERO_NORMAL/i_o_sincos_compressed} \
{/ZERO_NORMAL/o_exp_a_compressed\[7:0\]} \
{/ZERO_NORMAL/o_frac_a_compressed\[31:0\]} \
{/ZERO_NORMAL/o_sign_a_compressed} \
{/ZERO_NORMAL/o_sincos_compressed} \
{/top_tb/output_if/D_ZERO_FLAG} \
{/top_tb/output_if/RESULT_SIGN_FLIP} \
{/top_tb/output_if/X_ZERO_FLAG} \
{/top_tb/output_if/clk} \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/frac36\[35:0\]} \
{/top_tb/output_if/frac40\[39:0\]} \
{/top_tb/output_if/rst_n} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/output_if/valid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 13 14 15 16 17 18 19 20 21 22 23 24 )} 
wvSetPosition -win $_nWave2 {("G1" 24)}
wvSetPosition -win $_nWave2 {("G1" 24)}
wvSetPosition -win $_nWave2 {("G1" 24)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/ZERO_NORMAL/RESULT_SIGN_FLIP} \
{/ZERO_NORMAL/X_ZERO_FLAG} \
{/ZERO_NORMAL/i_RESULT_SIGN_FLIP} \
{/ZERO_NORMAL/i_X_ZERO_FLAG} \
{/ZERO_NORMAL/i_o_exp_a_compressed\[7:0\]} \
{/ZERO_NORMAL/i_o_frac_a_compressed\[31:0\]} \
{/ZERO_NORMAL/i_o_sign_a_compressed} \
{/ZERO_NORMAL/i_o_sincos_compressed} \
{/ZERO_NORMAL/o_exp_a_compressed\[7:0\]} \
{/ZERO_NORMAL/o_frac_a_compressed\[31:0\]} \
{/ZERO_NORMAL/o_sign_a_compressed} \
{/ZERO_NORMAL/o_sincos_compressed} \
{/top_tb/output_if/D_ZERO_FLAG} \
{/top_tb/output_if/RESULT_SIGN_FLIP} \
{/top_tb/output_if/X_ZERO_FLAG} \
{/top_tb/output_if/clk} \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/frac36\[35:0\]} \
{/top_tb/output_if/frac40\[39:0\]} \
{/top_tb/output_if/rst_n} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/output_if/valid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 13 14 15 16 17 18 19 20 21 22 23 24 )} 
wvSetPosition -win $_nWave2 {("G1" 24)}
wvGetSignalClose -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
debExit
