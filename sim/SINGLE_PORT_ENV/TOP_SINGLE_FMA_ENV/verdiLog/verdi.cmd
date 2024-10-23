debImport "-2001" "-top_tb" "-f" "rtl_list.f"
debLoadSimResult \
           /home/master/euclide_project/Triangle_New_1/sim/SINGLE_PORT_ENV/TOP_SINGLE_FMA_ENV/tb.fsdb
wvCreateWindow
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/ZERO_NORMAL"
verdiSetActWin -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/uvm_custom_install_verdi_recording"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/D_ZERO_FLAG} \
{/top_tb/input_if_0/RESULT_SIGN_FLIP} \
{/top_tb/input_if_0/X_ZERO_FLAG} \
{/top_tb/input_if_0/allow} \
{/top_tb/input_if_0/clk} \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/frac36\[35:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 )} 
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/D_ZERO_FLAG} \
{/top_tb/input_if_0/RESULT_SIGN_FLIP} \
{/top_tb/input_if_0/X_ZERO_FLAG} \
{/top_tb/input_if_0/allow} \
{/top_tb/input_if_0/clk} \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/frac36\[35:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 )} 
wvSetPosition -win $_nWave2 {("G1" 8)}
wvGetSignalClose -win $_nWave2
wvZoom -win $_nWave2 0.000000 1381.243243
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 73699.830951 -snap {("G1" 4)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/ZERO_NORMAL"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvGetSignalSetScope -win $_nWave2 "/top_tb/output_if"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_cof_rec_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/D_ZERO_FLAG} \
{/top_tb/input_if_0/RESULT_SIGN_FLIP} \
{/top_tb/input_if_0/X_ZERO_FLAG} \
{/top_tb/input_if_0/allow} \
{/top_tb/input_if_0/clk} \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/frac36\[35:0\]} \
{/top_tb/u_top/result_done} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/D_ZERO_FLAG} \
{/top_tb/input_if_0/RESULT_SIGN_FLIP} \
{/top_tb/input_if_0/X_ZERO_FLAG} \
{/top_tb/input_if_0/allow} \
{/top_tb/input_if_0/clk} \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/frac36\[35:0\]} \
{/top_tb/u_top/result_done} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvSetPosition -win $_nWave2 {("G1" 9)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 11917.419473 -snap {("G1" 7)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/ZERO_NORMAL"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/D_ZERO_FLAG} \
{/top_tb/input_if_0/RESULT_SIGN_FLIP} \
{/top_tb/input_if_0/X_ZERO_FLAG} \
{/top_tb/input_if_0/allow} \
{/top_tb/input_if_0/clk} \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/frac36\[35:0\]} \
{/top_tb/u_top/result_done} \
{/top_tb/input_if_0/valid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/D_ZERO_FLAG} \
{/top_tb/input_if_0/RESULT_SIGN_FLIP} \
{/top_tb/input_if_0/X_ZERO_FLAG} \
{/top_tb/input_if_0/allow} \
{/top_tb/input_if_0/clk} \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/frac36\[35:0\]} \
{/top_tb/u_top/result_done} \
{/top_tb/input_if_0/valid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetPosition -win $_nWave2 {("G1" 10)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 25716.536757 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 35752.258419 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 44847.131174 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 54569.236534 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 65545.807101 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 76835.993970 -snap {("G1" 5)}
verdiWindowResize -win $_Verdi_1 "466" "201" "1435" "628"
verdiWindowResize -win $_Verdi_1 "956" "26" "957" "850"
verdiWindowResize -win $_Verdi_1 "564" "240" "1435" "628"
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 26971.001965 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 14426.349888 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 23207.606342 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 36693.107324 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 46101.596382 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 33556.944305 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 25716.536757 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 36693.107324 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 49864.992005 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 55510.085439 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 92830.425368 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 107570.391558 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 116665.264313 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 105061.461143 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 72445.365743 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 65859.423403 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 56137.318043 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 44533.514872 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 35125.025815 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 23521.222644 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 14112.733586 -snap {("G1" 10)}
verdiWindowResize -win $_Verdi_1 "956" "26" "957" "850"
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 21325.908530 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 17562.512907 -snap {("G1" 10)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/output_if"
wvSetPosition -win $_nWave2 {("G1" 22)}
wvSetPosition -win $_nWave2 {("G1" 22)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/D_ZERO_FLAG} \
{/top_tb/input_if_0/RESULT_SIGN_FLIP} \
{/top_tb/input_if_0/X_ZERO_FLAG} \
{/top_tb/input_if_0/allow} \
{/top_tb/input_if_0/clk} \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/frac36\[35:0\]} \
{/top_tb/u_top/result_done} \
{/top_tb/input_if_0/valid} \
{/top_tb/output_if/D_ZERO_FLAG} \
{/top_tb/output_if/RESULT_SIGN_FLIP} \
{/top_tb/output_if/X_ZERO_FLAG} \
{/top_tb/output_if/allow} \
{/top_tb/output_if/clk} \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/frac36\[35:0\]} \
{/top_tb/output_if/frac40\[39:0\]} \
{/top_tb/output_if/rst_n} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 11 12 13 14 15 16 17 18 19 20 21 22 )} 
wvSetPosition -win $_nWave2 {("G1" 22)}
wvSetPosition -win $_nWave2 {("G1" 22)}
wvSetPosition -win $_nWave2 {("G1" 22)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/D_ZERO_FLAG} \
{/top_tb/input_if_0/RESULT_SIGN_FLIP} \
{/top_tb/input_if_0/X_ZERO_FLAG} \
{/top_tb/input_if_0/allow} \
{/top_tb/input_if_0/clk} \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/frac36\[35:0\]} \
{/top_tb/u_top/result_done} \
{/top_tb/input_if_0/valid} \
{/top_tb/output_if/D_ZERO_FLAG} \
{/top_tb/output_if/RESULT_SIGN_FLIP} \
{/top_tb/output_if/X_ZERO_FLAG} \
{/top_tb/output_if/allow} \
{/top_tb/output_if/clk} \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/frac36\[35:0\]} \
{/top_tb/output_if/frac40\[39:0\]} \
{/top_tb/output_if/rst_n} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 11 12 13 14 15 16 17 18 19 20 21 22 )} 
wvSetPosition -win $_nWave2 {("G1" 22)}
wvGetSignalClose -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 138746.983105 -snap {("G1" 22)}
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/ZERO_NORMAL"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/output_if"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvSetPosition -win $_nWave2 {("G1" 23)}
wvSetPosition -win $_nWave2 {("G1" 23)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/D_ZERO_FLAG} \
{/top_tb/input_if_0/RESULT_SIGN_FLIP} \
{/top_tb/input_if_0/X_ZERO_FLAG} \
{/top_tb/input_if_0/allow} \
{/top_tb/input_if_0/clk} \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/frac36\[35:0\]} \
{/top_tb/u_top/result_done} \
{/top_tb/input_if_0/valid} \
{/top_tb/output_if/D_ZERO_FLAG} \
{/top_tb/output_if/RESULT_SIGN_FLIP} \
{/top_tb/output_if/X_ZERO_FLAG} \
{/top_tb/output_if/allow} \
{/top_tb/output_if/clk} \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/frac36\[35:0\]} \
{/top_tb/output_if/frac40\[39:0\]} \
{/top_tb/output_if/rst_n} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/input_if_0/allow} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 23 )} 
wvSetPosition -win $_nWave2 {("G1" 23)}
wvSetPosition -win $_nWave2 {("G1" 23)}
wvSetPosition -win $_nWave2 {("G1" 23)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/D_ZERO_FLAG} \
{/top_tb/input_if_0/RESULT_SIGN_FLIP} \
{/top_tb/input_if_0/X_ZERO_FLAG} \
{/top_tb/input_if_0/allow} \
{/top_tb/input_if_0/clk} \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/frac36\[35:0\]} \
{/top_tb/u_top/result_done} \
{/top_tb/input_if_0/valid} \
{/top_tb/output_if/D_ZERO_FLAG} \
{/top_tb/output_if/RESULT_SIGN_FLIP} \
{/top_tb/output_if/X_ZERO_FLAG} \
{/top_tb/output_if/allow} \
{/top_tb/output_if/clk} \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/frac36\[35:0\]} \
{/top_tb/output_if/frac40\[39:0\]} \
{/top_tb/output_if/rst_n} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/input_if_0/allow} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 23 )} 
wvSetPosition -win $_nWave2 {("G1" 23)}
wvGetSignalClose -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 83688.656476 -snap {("G1" 23)}
wvSetCursor -win $_nWave2 16150.442478 -snap {("G1" 23)}
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
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 )} 
wvSelectSignal -win $_nWave2 {( "G1" 23 )} 
wvSetCursor -win $_nWave2 87726.267096 -snap {("G1" 23)}
wvSetCursor -win $_nWave2 11378.720837 -snap {("G1" 15)}
wvSetCursor -win $_nWave2 14315.164924 -snap {("G1" 15)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 122229.485117 -snap {("G1" 17)}
wvSelectSignal -win $_nWave2 {( "G1" 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 \
           19 20 21 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSelectGroup -win $_nWave2 {G1}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/ZERO_NORMAL"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvGetSignalSetScope -win $_nWave2 "/top_tb/output_if"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/allow} \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
{/top_tb/input_if_0/valid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave2 {("G1" 5)}
wvGetSignalSetScope -win $_nWave2 "/top_tb/output_if"
wvSetPosition -win $_nWave2 {("G2" 0)}
wvRenameGroup -win $_nWave2 {G2} {output_if}
wvAddSignal -win $_nWave2 "/top_tb/output_if/clk" "/top_tb/output_if/exp8\[7:0\]" \
           "/top_tb/output_if/frac32\[31:0\]" \
           "/top_tb/output_if/frac40\[39:0\]" "/top_tb/output_if/rst_n" \
           "/top_tb/output_if/sign" "/top_tb/output_if/sin_cos" \
           "/top_tb/output_if/valid"
wvSetPosition -win $_nWave2 {("output_if" 0)}
wvSetPosition -win $_nWave2 {("output_if" 8)}
wvSetPosition -win $_nWave2 {("output_if" 8)}
wvSetCursor -win $_nWave2 181325.422365 -snap {("G3" 0)}
wvSetCursor -win $_nWave2 97269.710378 -snap {("output_if" 8)}
wvSelectSignal -win $_nWave2 {( "output_if" 4 )} 
wvSetCursor -win $_nWave2 15049.275945 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 95801.488335 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 17618.664521 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 104977.876106 -snap {("output_if" 8)}
wvSetCursor -win $_nWave2 16150.442478 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 103142.598552 -snap {("output_if" 8)}
wvSetCursor -win $_nWave2 93599.155270 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 106446.098150 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 90295.655672 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 104610.820595 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 92497.988737 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 105344.931617 -snap {("G1" 5)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/ZERO_NORMAL"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvGetSignalSetScope -win $_nWave2 "/top_tb/output_if"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_stage1"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_round"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvSetPosition -win $_nWave2 {("output_if" 59)}
wvSetPosition -win $_nWave2 {("output_if" 59)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/allow} \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
{/top_tb/input_if_0/valid} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/clk} \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/frac40\[39:0\]} \
{/top_tb/output_if/rst_n} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/output_if/valid} \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/done} \
{/top_tb/u_top/u_fma_single/i_RESULT_SIGN_FLIP} \
{/top_tb/u_top/u_fma_single/i_X_ZERO_CAL} \
{/top_tb/u_top/u_fma_single/i_clk} \
{/top_tb/u_top/u_fma_single/i_exp_XorD\[7:0\]} \
{/top_tb/u_top/u_fma_single/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/i_exp_cof0\[7:0\]} \
{/top_tb/u_top/u_fma_single/i_exp_cof1\[7:0\]} \
{/top_tb/u_top/u_fma_single/i_exp_cof2\[7:0\]} \
{/top_tb/u_top/u_fma_single/i_exp_cof3\[7:0\]} \
{/top_tb/u_top/u_fma_single/i_frac_XorD\[39:0\]} \
{/top_tb/u_top/u_fma_single/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/i_frac_cof0\[39:0\]} \
{/top_tb/u_top/u_fma_single/i_frac_cof1\[39:0\]} \
{/top_tb/u_top/u_fma_single/i_frac_cof2\[39:0\]} \
{/top_tb/u_top/u_fma_single/i_frac_cof3\[39:0\]} \
{/top_tb/u_top/u_fma_single/i_rstn} \
{/top_tb/u_top/u_fma_single/i_sel_DorX} \
{/top_tb/u_top/u_fma_single/i_sign_XorD} \
{/top_tb/u_top/u_fma_single/i_sign_a} \
{/top_tb/u_top/u_fma_single/i_sign_b} \
{/top_tb/u_top/u_fma_single/i_sign_cof0} \
{/top_tb/u_top/u_fma_single/i_sign_cof1} \
{/top_tb/u_top/u_fma_single/i_sign_cof2} \
{/top_tb/u_top/u_fma_single/i_sign_cof3} \
{/top_tb/u_top/u_fma_single/i_valid} \
{/top_tb/u_top/u_fma_single/o_RESULT_SIGN_FLIP} \
{/top_tb/u_top/u_fma_single/o_X_ZERO_CAL} \
{/top_tb/u_top/u_fma_single/o_exp_add\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_add_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_add\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_add_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sel_DorX} \
{/top_tb/u_top/u_fma_single/o_sign_add} \
{/top_tb/u_top/u_fma_single/o_sign_add_reg} \
{/top_tb/u_top/u_fma_single/o_sign_c_reg} \
{/top_tb/u_top/u_fma_single/o_sign_mul} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/o_valid} \
{/top_tb/u_top/u_fma_single/result_done} \
{/top_tb/u_top/u_fma_single/start} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "output_if" 9 10 11 12 13 14 15 16 17 18 19 20 \
           21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 \
           43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 )} 
wvSetPosition -win $_nWave2 {("output_if" 59)}
wvSetPosition -win $_nWave2 {("output_if" 59)}
wvSetPosition -win $_nWave2 {("output_if" 59)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/allow} \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
{/top_tb/input_if_0/valid} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/clk} \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/frac40\[39:0\]} \
{/top_tb/output_if/rst_n} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/output_if/valid} \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/done} \
{/top_tb/u_top/u_fma_single/i_RESULT_SIGN_FLIP} \
{/top_tb/u_top/u_fma_single/i_X_ZERO_CAL} \
{/top_tb/u_top/u_fma_single/i_clk} \
{/top_tb/u_top/u_fma_single/i_exp_XorD\[7:0\]} \
{/top_tb/u_top/u_fma_single/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/i_exp_cof0\[7:0\]} \
{/top_tb/u_top/u_fma_single/i_exp_cof1\[7:0\]} \
{/top_tb/u_top/u_fma_single/i_exp_cof2\[7:0\]} \
{/top_tb/u_top/u_fma_single/i_exp_cof3\[7:0\]} \
{/top_tb/u_top/u_fma_single/i_frac_XorD\[39:0\]} \
{/top_tb/u_top/u_fma_single/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/i_frac_cof0\[39:0\]} \
{/top_tb/u_top/u_fma_single/i_frac_cof1\[39:0\]} \
{/top_tb/u_top/u_fma_single/i_frac_cof2\[39:0\]} \
{/top_tb/u_top/u_fma_single/i_frac_cof3\[39:0\]} \
{/top_tb/u_top/u_fma_single/i_rstn} \
{/top_tb/u_top/u_fma_single/i_sel_DorX} \
{/top_tb/u_top/u_fma_single/i_sign_XorD} \
{/top_tb/u_top/u_fma_single/i_sign_a} \
{/top_tb/u_top/u_fma_single/i_sign_b} \
{/top_tb/u_top/u_fma_single/i_sign_cof0} \
{/top_tb/u_top/u_fma_single/i_sign_cof1} \
{/top_tb/u_top/u_fma_single/i_sign_cof2} \
{/top_tb/u_top/u_fma_single/i_sign_cof3} \
{/top_tb/u_top/u_fma_single/i_valid} \
{/top_tb/u_top/u_fma_single/o_RESULT_SIGN_FLIP} \
{/top_tb/u_top/u_fma_single/o_X_ZERO_CAL} \
{/top_tb/u_top/u_fma_single/o_exp_add\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_add_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_add\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_add_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sel_DorX} \
{/top_tb/u_top/u_fma_single/o_sign_add} \
{/top_tb/u_top/u_fma_single/o_sign_add_reg} \
{/top_tb/u_top/u_fma_single/o_sign_c_reg} \
{/top_tb/u_top/u_fma_single/o_sign_mul} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/o_valid} \
{/top_tb/u_top/u_fma_single/result_done} \
{/top_tb/u_top/u_fma_single/start} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "output_if" 9 10 11 12 13 14 15 16 17 18 19 20 \
           21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 \
           43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 )} 
wvSetPosition -win $_nWave2 {("output_if" 59)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 30
wvSelectSignal -win $_nWave2 {( "output_if" 9 )} 
wvScrollUp -win $_nWave2 3
wvSelectSignal -win $_nWave2 {( "output_if" 1 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 9 )} 
wvSetCursor -win $_nWave2 54691.271118 -snap {("output_if" 9)}
wvSetCursor -win $_nWave2 45514.883347 -snap {("output_if" 9)}
wvSetCursor -win $_nWave2 45514.883347 -snap {("output_if" 10)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "output_if" 8 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "output_if" 9 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 14 )} 
wvScrollDown -win $_nWave2 36
wvSelectSignal -win $_nWave2 {( "output_if" 57 )} 
wvScrollUp -win $_nWave2 7
wvSelectSignal -win $_nWave2 {( "output_if" 38 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 54691.271118 -snap {("output_if" 9)}
wvSetCursor -win $_nWave2 45514.883347 -snap {("output_if" 13)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 15
wvSelectSignal -win $_nWave2 {( "output_if" 26 )} 
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 12
wvSelectSignal -win $_nWave2 {( "output_if" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 \
           )} 
wvSelectSignal -win $_nWave2 {( "output_if" 7 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 1 2 3 4 5 6 7 8 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("output_if" 51)}
wvSelectSignal -win $_nWave2 {( "output_if" 1 2 3 4 5 6 )} 
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvSelectSignal -win $_nWave2 {( "output_if" 4 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 \
           16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 )} 
wvSelectAll -win $_nWave2
wvScrollDown -win $_nWave2 13
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("output_if" 0)}
wvSelectGroup -win $_nWave2 {G3}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/ZERO_NORMAL"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvGetSignalSetScope -win $_nWave2 "/top_tb/output_if"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single/u_FADD_N40"
wvSetPosition -win $_nWave2 {("G3" 0)}
wvRenameGroup -win $_nWave2 {G3} {u_FADD_N40}
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single/u_FMUL"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single/u_FADD_N40"
wvRenameGroup -win $_nWave2 {u_FADD_N40} {u_FADD_N40#1}
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single/u_FMUL"
wvRenameGroup -win $_nWave2 {G4} {u_FMUL}
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single/u_FADD_N40"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvSetPosition -win $_nWave2 {("u_FMUL" 11)}
wvSetPosition -win $_nWave2 {("u_FMUL" 11)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
}
wvAddSignal -win $_nWave2 -group {"G5" \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
}
wvSelectSignal -win $_nWave2 {( "u_FMUL" 9 )} 
wvSetPosition -win $_nWave2 {("u_FMUL" 11)}
wvSetPosition -win $_nWave2 {("u_FMUL" 11)}
wvSetPosition -win $_nWave2 {("u_FMUL" 11)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
}
wvAddSignal -win $_nWave2 -group {"G5" \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
}
wvSelectSignal -win $_nWave2 {( "u_FMUL" 9 )} 
wvSetPosition -win $_nWave2 {("u_FMUL" 11)}
wvGetSignalClose -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/ZERO_NORMAL"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvGetSignalSetScope -win $_nWave2 "/top_tb/output_if"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_cof_rec_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_cof_rec_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvSetPosition -win $_nWave2 {("G5" 2)}
wvSetPosition -win $_nWave2 {("G5" 2)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvSelectSignal -win $_nWave2 {( "G5" 1 2 )} 
wvSetPosition -win $_nWave2 {("G5" 2)}
wvSetPosition -win $_nWave2 {("G5" 2)}
wvSetPosition -win $_nWave2 {("G5" 2)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvSelectSignal -win $_nWave2 {( "G5" 1 2 )} 
wvSetPosition -win $_nWave2 {("G5" 2)}
wvGetSignalClose -win $_nWave2
verdiWindowResize -win $_Verdi_1 "956" "26" "957" "850"
verdiWindowResize -win $_Verdi_1 "959" "26" "960" "1016"
verdiWindowResize -win $_Verdi_1 "24" "26" "1895" "1016"
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/ZERO_NORMAL"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvGetSignalSetScope -win $_nWave2 "/top_tb/output_if"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvSetPosition -win $_nWave2 {("G5" 3)}
wvSetPosition -win $_nWave2 {("G5" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvSelectSignal -win $_nWave2 {( "G5" 3 )} 
wvSetPosition -win $_nWave2 {("G5" 3)}
wvSetPosition -win $_nWave2 {("G5" 3)}
wvSetPosition -win $_nWave2 {("G5" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvSelectSignal -win $_nWave2 {( "G5" 3 )} 
wvSetPosition -win $_nWave2 {("G5" 3)}
wvGetSignalClose -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 23496.186931 -snap {("G5" 3)}
verdiWindowResize -win $_Verdi_1 "514" "189" "960" "1016"
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 42208.806759 -snap {("G5" 2)}
wvSelectSignal -win $_nWave2 {( "u_FMUL" 3 )} 
wvSelectSignal -win $_nWave2 {( "G6" 6 )} 
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 205171.504161 -snap {("G6" 6)}
wvSetCursor -win $_nWave2 126993.453381 -snap {("G6" 10)}
wvSetCursor -win $_nWave2 54320.899134 -snap {("G6" 10)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single/u_FADD_N40"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single/u_FADD_N40"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvSetPosition -win $_nWave2 {("G5" 4)}
wvSetPosition -win $_nWave2 {("G5" 4)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvSelectSignal -win $_nWave2 {( "G5" 4 )} 
wvSetPosition -win $_nWave2 {("G5" 4)}
wvSetPosition -win $_nWave2 {("u_FADD_N40#1" 0)}
wvSetPosition -win $_nWave2 {("u_FADD_N40#1" 1)}
wvSetPosition -win $_nWave2 {("u_FADD_N40#1" 2)}
wvSetPosition -win $_nWave2 {("u_FADD_N40#1" 3)}
wvSetPosition -win $_nWave2 {("u_FADD_N40#1" 4)}
wvSetPosition -win $_nWave2 {("u_FADD_N40#1" 5)}
wvSetPosition -win $_nWave2 {("u_FADD_N40#1" 6)}
wvSetPosition -win $_nWave2 {("u_FADD_N40#1" 7)}
wvSetPosition -win $_nWave2 {("u_FADD_N40#1" 8)}
wvSetPosition -win $_nWave2 {("u_FMUL" 0)}
wvSetPosition -win $_nWave2 {("u_FMUL" 2)}
wvSetPosition -win $_nWave2 {("u_FMUL" 4)}
wvSetPosition -win $_nWave2 {("u_FMUL" 5)}
wvSetPosition -win $_nWave2 {("u_FMUL" 6)}
wvSetPosition -win $_nWave2 {("u_FMUL" 7)}
wvSetPosition -win $_nWave2 {("u_FMUL" 8)}
wvSetPosition -win $_nWave2 {("u_FMUL" 10)}
wvSetPosition -win $_nWave2 {("u_FMUL" 12)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSetPosition -win $_nWave2 {("G6" 2)}
wvSetPosition -win $_nWave2 {("G6" 3)}
wvSetPosition -win $_nWave2 {("G6" 4)}
wvSetPosition -win $_nWave2 {("G6" 5)}
wvSetPosition -win $_nWave2 {("G6" 6)}
wvSetPosition -win $_nWave2 {("G6" 7)}
wvSetPosition -win $_nWave2 {("G6" 8)}
wvSetPosition -win $_nWave2 {("G6" 9)}
wvSetPosition -win $_nWave2 {("G6" 10)}
wvSetPosition -win $_nWave2 {("G6" 11)}
wvSetPosition -win $_nWave2 {("G7" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 1)}
wvSetPosition -win $_nWave2 {("G7" 1)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 51140.912730 -snap {("G7" 1)}
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("G6" 11)}
wvSetPosition -win $_nWave2 {("G7" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("G7" 1)}
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("G6" 11)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 11)}
wvSetPosition -win $_nWave2 {("G6" 12)}
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 42373.899119 -snap {("u_FMUL" 5)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvSelectGroup -win $_nWave2 {G1}
wvSelectGroup -win $_nWave2 {G1}
wvSelectGroup -win $_nWave2 {G1}
wvSelectGroup -win $_nWave2 {output_if}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "u_FADD_N40#1" 1 )} 
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_cof_rec_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_cof_rec_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_stage3"
wvSetPosition -win $_nWave2 {("G6" 14)}
wvSetPosition -win $_nWave2 {("G6" 14)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "G6" 13 14 )} 
wvSetPosition -win $_nWave2 {("G6" 14)}
wvSetPosition -win $_nWave2 {("G6" 15)}
wvSetPosition -win $_nWave2 {("G6" 15)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "G6" 15 )} 
wvSetPosition -win $_nWave2 {("G6" 15)}
wvSetPosition -win $_nWave2 {("G6" 15)}
wvSetPosition -win $_nWave2 {("G6" 15)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "G6" 15 )} 
wvSetPosition -win $_nWave2 {("G6" 15)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 54976.481185 -snap {("G6" 6)}
wvSetCursor -win $_nWave2 44748.298639 -snap {("G6" 6)}
wvScrollUp -win $_nWave2 7
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/ZERO_NORMAL"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvGetSignalSetScope -win $_nWave2 "/top_tb/output_if"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_stage3"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvSetPosition -win $_nWave2 {("G6" 17)}
wvSetPosition -win $_nWave2 {("G6" 17)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "G6" 16 17 )} 
wvSetPosition -win $_nWave2 {("G6" 17)}
wvSetPosition -win $_nWave2 {("G6" 17)}
wvSetPosition -win $_nWave2 {("G6" 17)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "G6" 16 17 )} 
wvSetPosition -win $_nWave2 {("G6" 17)}
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G6" 16 )} 
wvSelectSignal -win $_nWave2 {( "G6" 17 )} 
wvSelectSignal -win $_nWave2 {( "G6" 16 )} 
wvSelectSignal -win $_nWave2 {( "G6" 16 17 )} 
wvSetPosition -win $_nWave2 {("G6" 16)}
wvSetPosition -win $_nWave2 {("G6" 15)}
wvSetPosition -win $_nWave2 {("G6" 13)}
wvSetPosition -win $_nWave2 {("G6" 12)}
wvSetPosition -win $_nWave2 {("G6" 11)}
wvSetPosition -win $_nWave2 {("G6" 9)}
wvSetPosition -win $_nWave2 {("G6" 8)}
wvSetPosition -win $_nWave2 {("G6" 7)}
wvSetPosition -win $_nWave2 {("G6" 6)}
wvSetPosition -win $_nWave2 {("G6" 5)}
wvSetPosition -win $_nWave2 {("u_FMUL" 2)}
wvSetPosition -win $_nWave2 {("u_FMUL" 1)}
wvSetPosition -win $_nWave2 {("u_FMUL" 0)}
wvSetPosition -win $_nWave2 {("u_FADD_N40#1" 9)}
wvSetPosition -win $_nWave2 {("u_FADD_N40#1" 8)}
wvSetPosition -win $_nWave2 {("u_FADD_N40#1" 7)}
wvSetPosition -win $_nWave2 {("u_FADD_N40#1" 6)}
wvSetPosition -win $_nWave2 {("u_FADD_N40#1" 5)}
wvSetPosition -win $_nWave2 {("u_FADD_N40#1" 4)}
wvSetPosition -win $_nWave2 {("u_FADD_N40#1" 3)}
wvSetPosition -win $_nWave2 {("u_FADD_N40#1" 2)}
wvSetPosition -win $_nWave2 {("u_FADD_N40#1" 1)}
wvSetPosition -win $_nWave2 {("u_FADD_N40#1" 0)}
wvSetPosition -win $_nWave2 {("G5" 3)}
wvSetPosition -win $_nWave2 {("G5" 2)}
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("output_if" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("output_if" 0)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("output_if" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/ZERO_NORMAL"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvGetSignalSetScope -win $_nWave2 "/top_tb/output_if"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_stage3"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetPosition -win $_nWave2 {("G1" 3)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSetRadix -win $_nWave2 -format Hex
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetRadix -win $_nWave2 -2Com
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G6" 6 )} 
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "u_FMUL" 3 )} 
wvSelectSignal -win $_nWave2 {( "u_FMUL" 2 )} 
wvSelectSignal -win $_nWave2 {( "u_FMUL" 3 )} 
wvSelectSignal -win $_nWave2 {( "u_FMUL" 4 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "u_FMUL" 3 )} 
wvSelectSignal -win $_nWave2 {( "u_FMUL" 2 )} 
wvSelectSignal -win $_nWave2 {( "u_FMUL" 2 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "u_FMUL" 3 )} 
wvSetCursor -win $_nWave2 85843.674940 -snap {("u_FMUL" 3)}
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "u_FMUL" 4 )} 
wvSelectSignal -win $_nWave2 {( "u_FMUL" 3 )} 
wvSelectSignal -win $_nWave2 {( "u_FMUL" 4 )} 
wvSelectSignal -win $_nWave2 {( "u_FMUL" 4 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "u_FMUL" 4 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSelectSignal -win $_nWave2 {( "u_FMUL" 4 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "u_FMUL" 4 )} 
wvSetRadix -win $_nWave2 -format Hex
wvSetCursor -win $_nWave2 105496.678017 -snap {("u_FMUL" 8)}
wvSetCursor -win $_nWave2 84871.894944 -snap {("u_FMUL" 7)}
wvSetCursor -win $_nWave2 104766.597200 -snap {("u_FMUL" 8)}
wvSetCursor -win $_nWave2 85236.935353 -snap {("u_FMUL" 7)}
wvSetCursor -win $_nWave2 105131.637608 -snap {("u_FMUL" 8)}
wvSetCursor -win $_nWave2 85236.935353 -snap {("u_FMUL" 3)}
wvSelectSignal -win $_nWave2 {( "u_FMUL" 3 )} 
wvSelectSignal -win $_nWave2 {( "u_FMUL" 4 )} 
wvSetCursor -win $_nWave2 104584.076996 -snap {("u_FMUL" 8)}
wvSetCursor -win $_nWave2 84324.334332 -snap {("u_FMUL" 8)}
wvSetCursor -win $_nWave2 105131.637608 -snap {("u_FMUL" 8)}
wvSetCursor -win $_nWave2 93267.824337 -snap {("u_FMUL" 8)}
wvSetCursor -win $_nWave2 106774.319446 -snap {("u_FMUL" 8)}
wvSetCursor -win $_nWave2 86149.536374 -snap {("u_FMUL" 8)}
wvSelectSignal -win $_nWave2 {( "u_FMUL" 8 )} 
wvSelectSignal -win $_nWave2 {( "u_FMUL" 10 )} 
wvSetPosition -win $_nWave2 {("u_FMUL" 10)}
wvSetPosition -win $_nWave2 {("u_FMUL" 9)}
wvSetPosition -win $_nWave2 {("u_FMUL" 8)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("u_FMUL" 8)}
wvSetPosition -win $_nWave2 {("u_FMUL" 9)}
wvSetCursor -win $_nWave2 94910.506174 -snap {("u_FMUL" 9)}
wvSelectSignal -win $_nWave2 {( "u_FADD_N40#1" 4 )} 
wvSetCursor -win $_nWave2 104766.597200 -snap {("G5" 1)}
wvSetCursor -win $_nWave2 95640.586991 -snap {("G5" 1)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/ZERO_NORMAL"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvGetSignalSetScope -win $_nWave2 "/top_tb/output_if"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_stage3"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvGetSignalSetScope -win $_nWave2 "/top_tb/output_if"
wvSetPosition -win $_nWave2 {("output_if" 0)}
wvAddSignal -win $_nWave2 "/top_tb/output_if/exp8\[7:0\]" \
           "/top_tb/output_if/frac32\[31:0\]" "/top_tb/output_if/sign" \
           "/top_tb/output_if/sin_cos"
wvSetPosition -win $_nWave2 {("output_if" 0)}
wvSetPosition -win $_nWave2 {("output_if" 4)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 105131.637608 -snap {("G5" 1)}
wvSelectSignal -win $_nWave2 {( "output_if" 3 )} 
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/ZERO_NORMAL"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvGetSignalSetScope -win $_nWave2 "/top_tb/output_if"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_stage3"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvSetPosition -win $_nWave2 {("output_if" 7)}
wvSetPosition -win $_nWave2 {("output_if" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_c_reg} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "output_if" 5 6 7 )} 
wvSetPosition -win $_nWave2 {("output_if" 7)}
wvSetPosition -win $_nWave2 {("output_if" 7)}
wvSetPosition -win $_nWave2 {("output_if" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_c_reg} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "output_if" 5 6 7 )} 
wvSetPosition -win $_nWave2 {("output_if" 7)}
wvGetSignalClose -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "output_if" 6 )} 
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/ZERO_NORMAL"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvGetSignalSetScope -win $_nWave2 "/top_tb/output_if"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_stage3"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single/u_FADD_N40"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_round"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvSetPosition -win $_nWave2 {("output_if" 8)}
wvSetPosition -win $_nWave2 {("output_if" 8)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_c_reg} \
{/top_tb/u_top/o_valid} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "output_if" 8 )} 
wvSetPosition -win $_nWave2 {("output_if" 8)}
wvSetPosition -win $_nWave2 {("output_if" 8)}
wvSetPosition -win $_nWave2 {("output_if" 8)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_c_reg} \
{/top_tb/u_top/o_valid} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "output_if" 8 )} 
wvSetPosition -win $_nWave2 {("output_if" 8)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "output_if" 2 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 3 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 2 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 1 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 4 )} 
wvSetCursor -win $_nWave2 123383.658026 -snap {("output_if" 7)}
wvSetCursor -win $_nWave2 106226.758833 -snap {("output_if" 6)}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectGroup -win $_nWave2 {output_if}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/ZERO_NORMAL"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvGetSignalSetScope -win $_nWave2 "/top_tb/output_if"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_stage3"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_round"
wvSetPosition -win $_nWave2 {("u_FMUL" 1)}
wvAddSubGroup -win $_nWave2 -holdpost {u_round}
wvSetPosition -win $_nWave2 {("output_if/u_round" 10)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 10)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_c_reg} \
{/top_tb/u_top/o_valid} \
}
wvAddSignal -win $_nWave2 -group {"output_if/u_round" \
{/top_tb/u_top/u_round/G} \
{/top_tb/u_top/u_round/PRE_exp\[7:0\]} \
{/top_tb/u_top/u_round/R} \
{/top_tb/u_top/u_round/STK} \
{/top_tb/u_top/u_round/frac_rounded\[40:0\]} \
{/top_tb/u_top/u_round/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_round/o_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/o_frac_a\[31:0\]} \
{/top_tb/u_top/u_round/round} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 1 2 3 4 5 6 7 8 9 10 )} 
wvSetPosition -win $_nWave2 {("output_if/u_round" 10)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 10)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 10)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_c_reg} \
{/top_tb/u_top/o_valid} \
}
wvAddSignal -win $_nWave2 -group {"output_if/u_round" \
{/top_tb/u_top/u_round/G} \
{/top_tb/u_top/u_round/PRE_exp\[7:0\]} \
{/top_tb/u_top/u_round/R} \
{/top_tb/u_top/u_round/STK} \
{/top_tb/u_top/u_round/frac_rounded\[40:0\]} \
{/top_tb/u_top/u_round/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_round/o_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/o_frac_a\[31:0\]} \
{/top_tb/u_top/u_round/round} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 1 2 3 4 5 6 7 8 9 10 )} 
wvSetPosition -win $_nWave2 {("output_if/u_round" 10)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 5 )} 
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 10 )} 
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 9 )} 
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 8 )} 
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 8 )} 
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 7 )} 
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 9 )} 
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 10 )} 
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 9 )} 
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 6 )} 
verdiWindowResize -win $_Verdi_1 "550" "282" "1435" "628"
wvScrollDown -win $_nWave2 0
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/ZERO_NORMAL"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvGetSignalSetScope -win $_nWave2 "/top_tb/output_if"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_stage3"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_round"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvSetPosition -win $_nWave2 {("output_if/u_round" 11)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 11)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_c_reg} \
{/top_tb/u_top/o_valid} \
}
wvAddSignal -win $_nWave2 -group {"output_if/u_round" \
{/top_tb/u_top/u_round/G} \
{/top_tb/u_top/u_round/PRE_exp\[7:0\]} \
{/top_tb/u_top/u_round/R} \
{/top_tb/u_top/u_round/STK} \
{/top_tb/u_top/u_round/frac_rounded\[40:0\]} \
{/top_tb/u_top/u_round/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_round/o_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/o_frac_a\[31:0\]} \
{/top_tb/u_top/u_round/round} \
{/top_tb/u_top/o_X_ZERO_CAL_3} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 11 )} 
wvSetPosition -win $_nWave2 {("output_if/u_round" 11)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 11)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 11)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_c_reg} \
{/top_tb/u_top/o_valid} \
}
wvAddSignal -win $_nWave2 -group {"output_if/u_round" \
{/top_tb/u_top/u_round/G} \
{/top_tb/u_top/u_round/PRE_exp\[7:0\]} \
{/top_tb/u_top/u_round/R} \
{/top_tb/u_top/u_round/STK} \
{/top_tb/u_top/u_round/frac_rounded\[40:0\]} \
{/top_tb/u_top/u_round/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_round/o_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/o_frac_a\[31:0\]} \
{/top_tb/u_top/u_round/round} \
{/top_tb/u_top/o_X_ZERO_CAL_3} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 11 )} 
wvSetPosition -win $_nWave2 {("output_if/u_round" 11)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 9 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectGroup -win $_nWave2 {G5}
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 11 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
verdiWindowResize -win $_Verdi_1 "347" "294" "1435" "628"
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectGroup -win $_nWave2 {output_if}
wvSelectSignal -win $_nWave2 {( "output_if" 7 )} 
wvSetCursor -win $_nWave2 125573.900476 -snap {("output_if" 2)}
wvScrollDown -win $_nWave2 12
wvSelectSignal -win $_nWave2 {( "G5" 3 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 104401.556791 -snap {("output_if" 8)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 130501.945989 -snap {("output_if" 7)}
wvSetCursor -win $_nWave2 104219.036587 -snap {("output_if" 8)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 111040.404996 -snap {("u_round" 0)}
wvSetCursor -win $_nWave2 116221.139288 -snap {("output_if" 7)}
wvSetCursor -win $_nWave2 105859.670704 -snap {("output_if" 8)}
verdiWindowResize -win $_Verdi_1 "482" "470" "1435" "628"
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvGetSignalOpen -win $_nWave2
verdiWindowResize -win $_Verdi_1 "484" "166" "1435" "628"
verdiWindowResize -win $_Verdi_1 "541" "166" "1435" "628"
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 68040.310371 -snap {("output_if" 7)}
wvSetCursor -win $_nWave2 105341.597275 -snap {("output_if" 8)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
verdiWindowResize -win $_Verdi_1 "637" "241" "1435" "628"
wvGoToTime -win $_nWave2 115000
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("output_if/u_round" 12)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 12)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_c_reg} \
{/top_tb/u_top/o_valid} \
}
wvAddSignal -win $_nWave2 -group {"output_if/u_round" \
{/top_tb/u_top/u_round/G} \
{/top_tb/u_top/u_round/PRE_exp\[7:0\]} \
{/top_tb/u_top/u_round/R} \
{/top_tb/u_top/u_round/STK} \
{/top_tb/u_top/u_round/frac_rounded\[40:0\]} \
{/top_tb/u_top/u_round/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_round/o_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/o_frac_a\[31:0\]} \
{/top_tb/u_top/u_round/round} \
{/top_tb/u_top/o_X_ZERO_CAL_3} \
{/top_tb/u_top/u_stage3/i_clk} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 12 )} 
wvSetPosition -win $_nWave2 {("output_if/u_round" 12)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 12)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 12)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_c_reg} \
{/top_tb/u_top/o_valid} \
}
wvAddSignal -win $_nWave2 -group {"output_if/u_round" \
{/top_tb/u_top/u_round/G} \
{/top_tb/u_top/u_round/PRE_exp\[7:0\]} \
{/top_tb/u_top/u_round/R} \
{/top_tb/u_top/u_round/STK} \
{/top_tb/u_top/u_round/frac_rounded\[40:0\]} \
{/top_tb/u_top/u_round/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_round/o_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/o_frac_a\[31:0\]} \
{/top_tb/u_top/u_round/round} \
{/top_tb/u_top/o_X_ZERO_CAL_3} \
{/top_tb/u_top/u_stage3/i_clk} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 12 )} 
wvSetPosition -win $_nWave2 {("output_if/u_round" 12)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 104996.214989 -snap {("output_if" 8)}
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 94289.364118 -snap {("u_round" 12)}
wvSetCursor -win $_nWave2 106032.361847 -snap {("output_if" 8)}
wvSetCursor -win $_nWave2 115012.301287 -snap {("output_if" 8)}
wvSetCursor -win $_nWave2 104996.214989 -snap {("output_if" 8)}
verdiWindowResize -win $_Verdi_1 "893" "396" "1435" "628"
wvSetCursor -win $_nWave2 63295.986873 -snap {("output_if" 7)}
wvSetCursor -win $_nWave2 53905.922887 -snap {("output_if" 5)}
wvSetCursor -win $_nWave2 65730.447907 -snap {("output_if" 5)}
wvSetCursor -win $_nWave2 17389.007383 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 69903.809679 -snap {("output_if" 8)}
wvSetCursor -win $_nWave2 63643.767021 -snap {("output_if" 7)}
wvSetCursor -win $_nWave2 105725.164887 -snap {("output_if" 8)}
wvSetCursor -win $_nWave2 117201.909760 -snap {("output_if" 8)}
wvSetCursor -win $_nWave2 58079.284659 -snap {("output_if" 5)}
wvSetCursor -win $_nWave2 64687.107464 -snap {("output_if" 5)}
wvSetCursor -win $_nWave2 50775.901558 -snap {("output_if" 5)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 104681.824445 -snap {("output_if" 8)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/ZERO_NORMAL"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvGetSignalSetScope -win $_nWave2 "/top_tb/output_if"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_round"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_stage3"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_stage3"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvSetPosition -win $_nWave2 {("output_if/u_round" 13)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 13)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_c_reg} \
{/top_tb/u_top/o_valid} \
}
wvAddSignal -win $_nWave2 -group {"output_if/u_round" \
{/top_tb/u_top/u_round/G} \
{/top_tb/u_top/u_round/PRE_exp\[7:0\]} \
{/top_tb/u_top/u_round/R} \
{/top_tb/u_top/u_round/STK} \
{/top_tb/u_top/u_round/frac_rounded\[40:0\]} \
{/top_tb/u_top/u_round/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_round/o_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/o_frac_a\[31:0\]} \
{/top_tb/u_top/u_round/round} \
{/top_tb/u_top/o_X_ZERO_CAL_3} \
{/top_tb/u_top/u_stage3/i_clk} \
{/top_tb/input_if_0/valid} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 13 )} 
wvSetPosition -win $_nWave2 {("output_if/u_round" 13)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 13)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 13)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_c_reg} \
{/top_tb/u_top/o_valid} \
}
wvAddSignal -win $_nWave2 -group {"output_if/u_round" \
{/top_tb/u_top/u_round/G} \
{/top_tb/u_top/u_round/PRE_exp\[7:0\]} \
{/top_tb/u_top/u_round/R} \
{/top_tb/u_top/u_round/STK} \
{/top_tb/u_top/u_round/frac_rounded\[40:0\]} \
{/top_tb/u_top/u_round/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_round/o_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/o_frac_a\[31:0\]} \
{/top_tb/u_top/u_round/round} \
{/top_tb/u_top/o_X_ZERO_CAL_3} \
{/top_tb/u_top/u_stage3/i_clk} \
{/top_tb/input_if_0/valid} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 13 )} 
wvSetPosition -win $_nWave2 {("output_if/u_round" 13)}
wvGetSignalClose -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvSetPosition -win $_nWave2 {("output_if/u_round" 14)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 14)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_c_reg} \
{/top_tb/u_top/o_valid} \
}
wvAddSignal -win $_nWave2 -group {"output_if/u_round" \
{/top_tb/u_top/u_round/G} \
{/top_tb/u_top/u_round/PRE_exp\[7:0\]} \
{/top_tb/u_top/u_round/R} \
{/top_tb/u_top/u_round/STK} \
{/top_tb/u_top/u_round/frac_rounded\[40:0\]} \
{/top_tb/u_top/u_round/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_round/o_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/o_frac_a\[31:0\]} \
{/top_tb/u_top/u_round/round} \
{/top_tb/u_top/o_X_ZERO_CAL_3} \
{/top_tb/u_top/u_stage3/i_clk} \
{/top_tb/input_if_0/valid} \
{/top_tb/u_top/i_valid} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 14 )} 
wvSetPosition -win $_nWave2 {("output_if/u_round" 14)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 14)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 14)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_c_reg} \
{/top_tb/u_top/o_valid} \
}
wvAddSignal -win $_nWave2 -group {"output_if/u_round" \
{/top_tb/u_top/u_round/G} \
{/top_tb/u_top/u_round/PRE_exp\[7:0\]} \
{/top_tb/u_top/u_round/R} \
{/top_tb/u_top/u_round/STK} \
{/top_tb/u_top/u_round/frac_rounded\[40:0\]} \
{/top_tb/u_top/u_round/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_round/o_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/o_frac_a\[31:0\]} \
{/top_tb/u_top/u_round/round} \
{/top_tb/u_top/o_X_ZERO_CAL_3} \
{/top_tb/u_top/u_stage3/i_clk} \
{/top_tb/input_if_0/valid} \
{/top_tb/u_top/i_valid} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 14 )} 
wvSetPosition -win $_nWave2 {("output_if/u_round" 14)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetPosition -win $_nWave2 {("output_if/u_round" 13)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 12)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 11)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 10)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 9)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 8)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 7)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 6)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 5)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 4)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 3)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 2)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 1)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 0)}
wvSetPosition -win $_nWave2 {("output_if" 8)}
wvSetPosition -win $_nWave2 {("output_if" 7)}
wvSetPosition -win $_nWave2 {("output_if" 6)}
wvSetPosition -win $_nWave2 {("output_if" 5)}
wvSetPosition -win $_nWave2 {("output_if" 4)}
wvSetPosition -win $_nWave2 {("output_if" 5)}
wvSetPosition -win $_nWave2 {("output_if" 6)}
wvSetPosition -win $_nWave2 {("output_if" 7)}
wvSetPosition -win $_nWave2 {("output_if" 8)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("output_if" 8)}
wvSetPosition -win $_nWave2 {("output_if" 9)}
wvSetCursor -win $_nWave2 15542.202877 -snap {("output_if" 9)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 0)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 1)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 2)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 3)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 4)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 5)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 6)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 7)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 8)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 9)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 10)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 11)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 12)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("output_if/u_round" 14)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/ZERO_NORMAL"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvGetSignalSetScope -win $_nWave2 "/top_tb/output_if"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_round"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_stage3"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvSetPosition -win $_nWave2 {("output_if" 5)}
wvSetPosition -win $_nWave2 {("output_if" 4)}
wvSetPosition -win $_nWave2 {("output_if" 3)}
wvSetPosition -win $_nWave2 {("output_if" 2)}
wvSetPosition -win $_nWave2 {("output_if" 1)}
wvSetPosition -win $_nWave2 {("output_if" 2)}
wvSetPosition -win $_nWave2 {("output_if" 3)}
wvSetPosition -win $_nWave2 {("output_if" 4)}
wvSetPosition -win $_nWave2 {("output_if" 5)}
wvSetPosition -win $_nWave2 {("output_if" 6)}
wvSetPosition -win $_nWave2 {("output_if" 7)}
wvSetPosition -win $_nWave2 {("output_if" 8)}
wvAddSignal -win $_nWave2 "/top_tb/u_top/i_valid"
wvSetPosition -win $_nWave2 {("output_if" 8)}
wvSetPosition -win $_nWave2 {("output_if" 9)}
wvSetCursor -win $_nWave2 126755.299016 -snap {("output_if" 9)}
wvSetCursor -win $_nWave2 12433.762301 -snap {("output_if" 9)}
wvSetCursor -win $_nWave2 104305.450416 -snap {("output_if" 8)}
wvSetCursor -win $_nWave2 12088.380015 -snap {("output_if" 9)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 106032.361847 -snap {("output_if" 8)}
wvSetCursor -win $_nWave2 12088.380015 -snap {("output_if" 9)}
verdiWindowResize -win $_Verdi_1 "608" "115" "1435" "628"
verdiWindowResize -win $_Verdi_1 "589" "117" "1435" "629"
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 108104.655564 -snap {("output_if" 8)}
wvSetCursor -win $_nWave2 12779.144587 -snap {("output_if" 9)}
wvSetCursor -win $_nWave2 110522.331567 -snap {("output_if" 8)}
wvSetCursor -win $_nWave2 102578.538986 -snap {("output_if" 8)}
verdiWindowResize -win $_Verdi_1 "437" "330" "1435" "629"
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 3 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "output_if" 6 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 5 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 6 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 5 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 5 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 6 )} 
verdiWindowResize -win $_Verdi_1 "650" "289" "1435" "629"
verdiWindowResize -win $_Verdi_1 "444" "273" "1435" "629"
wvSetCursor -win $_nWave2 177715.655452 -snap {("output_if" 2)}
wvSetCursor -win $_nWave2 177715.655452 -snap {("output_if" 9)}
wvSetCursor -win $_nWave2 87292.817062 -snap {("output_if" 9)}
wvSetCursor -win $_nWave2 108159.625921 -snap {("output_if" 8)}
wvSetCursor -win $_nWave2 186757.939291 -snap {("output_if" 8)}
wvSetCursor -win $_nWave2 104681.824445 -snap {("output_if" 8)}
wvSelectSignal -win $_nWave2 {( "output_if" 6 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSetCursor -win $_nWave2 185714.598848 -snap {("output_if" 4)}
wvSetCursor -win $_nWave2 86345.571537 -snap {("output_if" 5)}
wvSelectSignal -win $_nWave2 {( "output_if" 6 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 5 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 6 )} 
wvSetPosition -win $_nWave2 {("output_if" 6)}
wvSetPosition -win $_nWave2 {("output_if" 7)}
wvSetPosition -win $_nWave2 {("output_if" 8)}
wvSetPosition -win $_nWave2 {("output_if" 9)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("output_if/u_round" 1)}
wvSelectSignal -win $_nWave2 {( "output_if" 5 )} 
wvSetPosition -win $_nWave2 {("output_if" 5)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("output_if/u_round" 1)}
wvSelectSignal -win $_nWave2 {( "output_if" 5 )} 
wvSetPosition -win $_nWave2 {("output_if" 5)}
wvSetPosition -win $_nWave2 {("output_if" 7)}
wvSetPosition -win $_nWave2 {("output_if" 9)}
wvSetPosition -win $_nWave2 {("output_if" 10)}
wvSetPosition -win $_nWave2 {("output_if" 11)}
wvSetPosition -win $_nWave2 {("output_if" 12)}
wvSetPosition -win $_nWave2 {("output_if" 13)}
wvSetPosition -win $_nWave2 {("output_if" 14)}
wvSetPosition -win $_nWave2 {("output_if" 15)}
wvSetPosition -win $_nWave2 {("output_if" 16)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 0)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 1)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("output_if/u_round" 2)}
wvSetCursor -win $_nWave2 29012.112036 -snap {("output_if" 15)}
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 10 )} 
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 1 )} 
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvSetPosition -win $_nWave2 {("output_if/u_round" 5)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 5)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7\]} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[6\]} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[5\]} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[4\]} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[3\]} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[2\]} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[1\]} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[0\]} \
{/top_tb/u_top/u_fma_single/o_sign_c_reg} \
{/top_tb/u_top/o_valid} \
{/top_tb/u_top/i_valid} \
}
wvAddSignal -win $_nWave2 -group {"output_if/u_round" \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/o_exp_a\[7:0\]} \
{/top_tb/u_top/o_frac_a\[31:0\]} \
{/top_tb/u_top/o_sign_a} \
{/top_tb/u_top/u_round/G} \
{/top_tb/u_top/u_round/PRE_exp\[7:0\]} \
{/top_tb/u_top/u_round/R} \
{/top_tb/u_top/u_round/STK} \
{/top_tb/u_top/u_round/frac_rounded\[40:0\]} \
{/top_tb/u_top/u_round/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_round/o_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/o_frac_a\[31:0\]} \
{/top_tb/u_top/u_round/round} \
{/top_tb/u_top/o_X_ZERO_CAL_3} \
{/top_tb/u_top/u_stage3/i_clk} \
{/top_tb/input_if_0/valid} \
{/top_tb/u_top/i_valid} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 3 4 5 )} 
wvSetPosition -win $_nWave2 {("output_if/u_round" 5)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 3 )} 
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 2 )} 
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 1 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "output_if" 5 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 5 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 5 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 5 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 5 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 5 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 5 )} 
wvSetPosition -win $_nWave2 {("output_if" 5)}
wvSelectSignal -win $_nWave2 {( "output_if" 5 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 5 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 5 )} 
wvSetCursor -win $_nWave2 185815.669947 -snap {("output_if" 4)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "output_if" 2 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 14 )} 
wvSetCursor -win $_nWave2 103269.303558 -snap {("output_if" 14)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "output_if" 4 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 4 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 4 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 4 )} 
wvSetCursor -win $_nWave2 13469.909160 -snap {("output_if" 15)}
wvSetCursor -win $_nWave2 104996.214989 -snap {("output_if" 14)}
wvSetCursor -win $_nWave2 13815.291446 -snap {("output_if" 15)}
wvSetCursor -win $_nWave2 103269.303558 -snap {("output_if" 14)}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetCursor -win $_nWave2 94980.128690 -snap {("u_round" 0)}
wvSelectSignal -win $_nWave2 {( "output_if" 5 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 5 6 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 5 6 8 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 5 6 8 10 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 5 6 8 10 11 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 5 6 8 9 10 11 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 5 6 8 9 10 11 13 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 5 6 8 9 10 11 12 13 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 5 6 7 8 9 10 11 12 13 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("output_if" 5)}
wvSetPosition -win $_nWave2 {("output_if" 4)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 1 )} 
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 1 )} 
wvSetRadix -win $_nWave2 -format Hex
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvGetSignalOpen -win $_nWave2
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 14 )} 
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 13 )} 
verdiWindowResize -win $_Verdi_1 "390" "330" "1435" "629"
wvSetCursor -win $_nWave2 103614.685844 -snap {("output_if" 5)}
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 14 )} 
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 13 )} 
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 14 )} 
wvSelectSignal -win $_nWave2 {( "output_if/u_round" 16 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 9
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("output_if" 5)}
wvSetPosition -win $_nWave2 {("output_if" 5)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/u_top/o_st3_reg_X_ZERO_CAL} \
{/top_tb/u_top/o_valid} \
{/top_tb/u_top/i_valid} \
}
wvAddSignal -win $_nWave2 -group {"output_if/u_round" \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/o_exp_a\[7:0\]} \
{/top_tb/u_top/o_frac_a\[31:0\]} \
{/top_tb/u_top/o_sign_a} \
{/top_tb/u_top/u_round/G} \
{/top_tb/u_top/u_round/PRE_exp\[7:0\]} \
{/top_tb/u_top/u_round/R} \
{/top_tb/u_top/u_round/STK} \
{/top_tb/u_top/u_round/frac_rounded\[40:0\]} \
{/top_tb/u_top/u_round/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_round/o_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/o_frac_a\[31:0\]} \
{/top_tb/u_top/u_round/round} \
{/top_tb/u_top/o_X_ZERO_CAL_3} \
{/top_tb/u_top/u_stage3/i_clk} \
{/top_tb/input_if_0/valid} \
{/top_tb/u_top/i_valid} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "output_if" 5 )} 
wvSetPosition -win $_nWave2 {("output_if" 5)}
wvSetPosition -win $_nWave2 {("output_if" 5)}
wvSetPosition -win $_nWave2 {("output_if" 5)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/u_top/o_st3_reg_X_ZERO_CAL} \
{/top_tb/u_top/o_valid} \
{/top_tb/u_top/i_valid} \
}
wvAddSignal -win $_nWave2 -group {"output_if/u_round" \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/o_exp_a\[7:0\]} \
{/top_tb/u_top/o_frac_a\[31:0\]} \
{/top_tb/u_top/o_sign_a} \
{/top_tb/u_top/u_round/G} \
{/top_tb/u_top/u_round/PRE_exp\[7:0\]} \
{/top_tb/u_top/u_round/R} \
{/top_tb/u_top/u_round/STK} \
{/top_tb/u_top/u_round/frac_rounded\[40:0\]} \
{/top_tb/u_top/u_round/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_round/o_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/o_frac_a\[31:0\]} \
{/top_tb/u_top/u_round/round} \
{/top_tb/u_top/o_X_ZERO_CAL_3} \
{/top_tb/u_top/u_stage3/i_clk} \
{/top_tb/input_if_0/valid} \
{/top_tb/u_top/i_valid} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "output_if" 5 )} 
wvSetPosition -win $_nWave2 {("output_if" 5)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 44554.314913 -snap {("output_if" 5)}
wvSelectSignal -win $_nWave2 {( "output_if" 4 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 5 )} 
wvSetCursor -win $_nWave2 135389.856170 -snap {("output_if" 1)}
wvSetCursor -win $_nWave2 93943.981832 -snap {("output_if" 7)}
wvSetCursor -win $_nWave2 106032.361847 -snap {("output_if" 6)}
wvSetCursor -win $_nWave2 15542.202877 -snap {("output_if" 7)}
wvSetCursor -win $_nWave2 134353.709311 -snap {("output_if" 2)}
wvSetCursor -win $_nWave2 14160.673732 -snap {("output_if" 7)}
wvSelectSignal -win $_nWave2 {( "output_if" 1 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 1 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSelectSignal -win $_nWave2 {( "output_if" 1 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "output_if" 1 )} 
wvSetRadix -win $_nWave2 -format Hex
wvSetCursor -win $_nWave2 106723.126419 -snap {("output_if" 6)}
verdiWindowResize -win $_Verdi_1 "241" "137" "1435" "629"
verdiWindowResize -win $_Verdi_1 "595" "660" "1435" "629"
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single/u_FADD_N40"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvSetPosition -win $_nWave2 {("output_if" 6)}
wvSetPosition -win $_nWave2 {("output_if" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/u_top/o_st3_reg_X_ZERO_CAL} \
{/top_tb/u_top/sincos_pre} \
{/top_tb/u_top/o_valid} \
{/top_tb/u_top/i_valid} \
}
wvAddSignal -win $_nWave2 -group {"output_if/u_round" \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/o_exp_a\[7:0\]} \
{/top_tb/u_top/o_frac_a\[31:0\]} \
{/top_tb/u_top/o_sign_a} \
{/top_tb/u_top/u_round/G} \
{/top_tb/u_top/u_round/PRE_exp\[7:0\]} \
{/top_tb/u_top/u_round/R} \
{/top_tb/u_top/u_round/STK} \
{/top_tb/u_top/u_round/frac_rounded\[40:0\]} \
{/top_tb/u_top/u_round/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_round/o_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/o_frac_a\[31:0\]} \
{/top_tb/u_top/u_round/round} \
{/top_tb/u_top/o_X_ZERO_CAL_3} \
{/top_tb/u_top/u_stage3/i_clk} \
{/top_tb/input_if_0/valid} \
{/top_tb/u_top/i_valid} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "output_if" 6 )} 
wvSetPosition -win $_nWave2 {("output_if" 6)}
wvSetPosition -win $_nWave2 {("output_if" 6)}
wvSetPosition -win $_nWave2 {("output_if" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/u_top/o_st3_reg_X_ZERO_CAL} \
{/top_tb/u_top/sincos_pre} \
{/top_tb/u_top/o_valid} \
{/top_tb/u_top/i_valid} \
}
wvAddSignal -win $_nWave2 -group {"output_if/u_round" \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/o_exp_a\[7:0\]} \
{/top_tb/u_top/o_frac_a\[31:0\]} \
{/top_tb/u_top/o_sign_a} \
{/top_tb/u_top/u_round/G} \
{/top_tb/u_top/u_round/PRE_exp\[7:0\]} \
{/top_tb/u_top/u_round/R} \
{/top_tb/u_top/u_round/STK} \
{/top_tb/u_top/u_round/frac_rounded\[40:0\]} \
{/top_tb/u_top/u_round/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_round/o_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/o_frac_a\[31:0\]} \
{/top_tb/u_top/u_round/round} \
{/top_tb/u_top/o_X_ZERO_CAL_3} \
{/top_tb/u_top/u_stage3/i_clk} \
{/top_tb/input_if_0/valid} \
{/top_tb/u_top/i_valid} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "output_if" 6 )} 
wvSetPosition -win $_nWave2 {("output_if" 6)}
wvGetSignalClose -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "output_if" 7 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 6 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 7 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 6 )} 
wvSetCursor -win $_nWave2 132626.797880 -snap {("output_if" 6)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 14
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/ZERO_NORMAL"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvGetSignalSetScope -win $_nWave2 "/top_tb/output_if"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_round"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_stage3"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvSetPosition -win $_nWave2 {("output_if" 7)}
wvSetPosition -win $_nWave2 {("output_if" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/u_top/o_st3_reg_X_ZERO_CAL} \
{/top_tb/u_top/sincos_pre} \
{/top_tb/u_top/o_st3_valid} \
{/top_tb/u_top/o_valid} \
{/top_tb/u_top/i_valid} \
}
wvAddSignal -win $_nWave2 -group {"output_if/u_round" \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/o_exp_a\[7:0\]} \
{/top_tb/u_top/o_frac_a\[31:0\]} \
{/top_tb/u_top/o_sign_a} \
{/top_tb/u_top/u_round/G} \
{/top_tb/u_top/u_round/PRE_exp\[7:0\]} \
{/top_tb/u_top/u_round/R} \
{/top_tb/u_top/u_round/STK} \
{/top_tb/u_top/u_round/frac_rounded\[40:0\]} \
{/top_tb/u_top/u_round/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_round/o_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/o_frac_a\[31:0\]} \
{/top_tb/u_top/u_round/round} \
{/top_tb/u_top/o_X_ZERO_CAL_3} \
{/top_tb/u_top/u_stage3/i_clk} \
{/top_tb/input_if_0/valid} \
{/top_tb/u_top/i_valid} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "output_if" 7 )} 
wvSetPosition -win $_nWave2 {("output_if" 7)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 45245.079485 -snap {("output_if" 7)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 56642.694928 -snap {("output_if" 7)}
wvSetCursor -win $_nWave2 45590.461771 -snap {("output_if" 7)}
wvSetPosition -win $_nWave2 {("output_if" 8)}
wvSetPosition -win $_nWave2 {("output_if" 9)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 0)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 1)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 2)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 3)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 4)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 5)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 4)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 3)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 2)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 1)}
wvSetPosition -win $_nWave2 {("output_if/u_round" 0)}
wvSetPosition -win $_nWave2 {("output_if" 9)}
wvSetPosition -win $_nWave2 {("output_if" 8)}
wvSetPosition -win $_nWave2 {("output_if" 7)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("output_if" 7)}
wvScrollDown -win $_nWave2 13
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/ZERO_NORMAL"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvGetSignalSetScope -win $_nWave2 "/top_tb/output_if"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_round"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_stage3"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_stage2"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_stage3"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_stage2"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_stage3"
verdiWindowResize -win $_Verdi_1 "426" "413" "1435" "629"
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/ZERO_NORMAL"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvGetSignalSetScope -win $_nWave2 "/top_tb/output_if"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_round"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_stage3"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvSetPosition -win $_nWave2 {("output_if" 10)}
wvSetPosition -win $_nWave2 {("output_if" 10)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/u_top/o_st3_reg_X_ZERO_CAL} \
{/top_tb/u_top/sincos_pre} \
{/top_tb/u_top/o_st3_valid} \
{/top_tb/u_top/sincos_1} \
{/top_tb/u_top/sincos_2} \
{/top_tb/u_top/sincos_3} \
{/top_tb/u_top/o_valid} \
{/top_tb/u_top/i_valid} \
}
wvAddSignal -win $_nWave2 -group {"output_if/u_round" \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/o_exp_a\[7:0\]} \
{/top_tb/u_top/o_frac_a\[31:0\]} \
{/top_tb/u_top/o_sign_a} \
{/top_tb/u_top/u_round/G} \
{/top_tb/u_top/u_round/PRE_exp\[7:0\]} \
{/top_tb/u_top/u_round/R} \
{/top_tb/u_top/u_round/STK} \
{/top_tb/u_top/u_round/frac_rounded\[40:0\]} \
{/top_tb/u_top/u_round/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_round/o_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/o_frac_a\[31:0\]} \
{/top_tb/u_top/u_round/round} \
{/top_tb/u_top/o_X_ZERO_CAL_3} \
{/top_tb/u_top/u_stage3/i_clk} \
{/top_tb/input_if_0/valid} \
{/top_tb/u_top/i_valid} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "output_if" 8 9 10 )} 
wvSetPosition -win $_nWave2 {("output_if" 10)}
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "output_if" 7 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 8 )} 
wvSetCursor -win $_nWave2 15542.202877 -snap {("u_round" 19)}
wvSetCursor -win $_nWave2 95670.893263 -snap {("output_if" 8)}
wvSetCursor -win $_nWave2 13124.526874 -snap {("output_if" 12)}
wvSetCursor -win $_nWave2 95325.510977 -snap {("output_if" 8)}
verdiWindowResize -win $_Verdi_1 "272" "413" "1435" "629"
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
verdiDockWidgetRestore -dock windowDock_nWave_2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 22795.230886 -snap {("output_if" 8)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 55261.165783 -snap {("output_if" 6)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 134008.327025 -snap {("output_if" 4)}
wvSetCursor -win $_nWave2 55606.548070 -snap {("output_if" 6)}
wvSetCursor -win $_nWave2 132972.180167 -snap {("output_if" 4)}
wvSetCursor -win $_nWave2 56642.694928 -snap {("output_if" 4)}
wvSetCursor -win $_nWave2 102578.538986 -snap {("output_if" 11)}
wvSelectSignal -win $_nWave2 {( "output_if" 8 )} 
wvSetCursor -win $_nWave2 25558.289175 -snap {("output_if" 8)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvGetSignalOpen -win $_nWave2
wvSetCursor -win $_nWave2 52152.725208 -snap {("output_if" 6)}
wvSetCursor -win $_nWave2 136080.620742 -snap {("output_if" 6)}
wvSetCursor -win $_nWave2 54570.401211 -snap {("output_if" 6)}
wvSetCursor -win $_nWave2 12433.762301 -snap {("output_if" 12)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_round"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single/u_FADD_N40"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single/u_FADD_N40"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvSetPosition -win $_nWave2 {("output_if" 11)}
wvSetPosition -win $_nWave2 {("output_if" 11)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/u_top/o_st3_reg_X_ZERO_CAL} \
{/top_tb/u_top/sincos_pre} \
{/top_tb/u_top/o_st3_valid} \
{/top_tb/u_top/sincos_1} \
{/top_tb/u_top/sincos_2} \
{/top_tb/u_top/sincos_3} \
{/top_tb/u_top/i_valid_real} \
{/top_tb/u_top/o_valid} \
{/top_tb/u_top/i_valid} \
}
wvAddSignal -win $_nWave2 -group {"output_if/u_round" \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/o_exp_a\[7:0\]} \
{/top_tb/u_top/o_frac_a\[31:0\]} \
{/top_tb/u_top/o_sign_a} \
{/top_tb/u_top/u_round/G} \
{/top_tb/u_top/u_round/PRE_exp\[7:0\]} \
{/top_tb/u_top/u_round/R} \
{/top_tb/u_top/u_round/STK} \
{/top_tb/u_top/u_round/frac_rounded\[40:0\]} \
{/top_tb/u_top/u_round/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_round/o_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/o_frac_a\[31:0\]} \
{/top_tb/u_top/u_round/round} \
{/top_tb/u_top/o_X_ZERO_CAL_3} \
{/top_tb/u_top/u_stage3/i_clk} \
{/top_tb/input_if_0/valid} \
{/top_tb/u_top/i_valid} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "output_if" 11 )} 
wvSetPosition -win $_nWave2 {("output_if" 11)}
wvSetPosition -win $_nWave2 {("output_if" 11)}
wvSetPosition -win $_nWave2 {("output_if" 11)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/u_top/o_st3_reg_X_ZERO_CAL} \
{/top_tb/u_top/sincos_pre} \
{/top_tb/u_top/o_st3_valid} \
{/top_tb/u_top/sincos_1} \
{/top_tb/u_top/sincos_2} \
{/top_tb/u_top/sincos_3} \
{/top_tb/u_top/i_valid_real} \
{/top_tb/u_top/o_valid} \
{/top_tb/u_top/i_valid} \
}
wvAddSignal -win $_nWave2 -group {"output_if/u_round" \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/o_exp_a\[7:0\]} \
{/top_tb/u_top/o_frac_a\[31:0\]} \
{/top_tb/u_top/o_sign_a} \
{/top_tb/u_top/u_round/G} \
{/top_tb/u_top/u_round/PRE_exp\[7:0\]} \
{/top_tb/u_top/u_round/R} \
{/top_tb/u_top/u_round/STK} \
{/top_tb/u_top/u_round/frac_rounded\[40:0\]} \
{/top_tb/u_top/u_round/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_round/o_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/o_frac_a\[31:0\]} \
{/top_tb/u_top/u_round/round} \
{/top_tb/u_top/o_X_ZERO_CAL_3} \
{/top_tb/u_top/u_stage3/i_clk} \
{/top_tb/input_if_0/valid} \
{/top_tb/u_top/i_valid} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "output_if" 11 )} 
wvSetPosition -win $_nWave2 {("output_if" 11)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 15000.000000
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 11
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 12
wvSelectSignal -win $_nWave2 {( "output_if" 7 )} 
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/ZERO_NORMAL"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvGetSignalSetScope -win $_nWave2 "/top_tb/output_if"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_round"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_stage3"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/output_if"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvSetPosition -win $_nWave2 {("output_if" 12)}
wvSetPosition -win $_nWave2 {("output_if" 12)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/u_top/o_st3_reg_X_ZERO_CAL} \
{/top_tb/u_top/sincos_pre} \
{/top_tb/u_top/o_st3_valid} \
{/top_tb/u_top/sincos_1} \
{/top_tb/u_top/sincos_2} \
{/top_tb/u_top/sincos_3} \
{/top_tb/u_top/i_valid_real} \
{/top_tb/u_top/o_allow} \
{/top_tb/u_top/o_valid} \
{/top_tb/u_top/i_valid} \
}
wvAddSignal -win $_nWave2 -group {"output_if/u_round" \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/o_exp_a\[7:0\]} \
{/top_tb/u_top/o_frac_a\[31:0\]} \
{/top_tb/u_top/o_sign_a} \
{/top_tb/u_top/u_round/G} \
{/top_tb/u_top/u_round/PRE_exp\[7:0\]} \
{/top_tb/u_top/u_round/R} \
{/top_tb/u_top/u_round/STK} \
{/top_tb/u_top/u_round/frac_rounded\[40:0\]} \
{/top_tb/u_top/u_round/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_round/o_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/o_frac_a\[31:0\]} \
{/top_tb/u_top/u_round/round} \
{/top_tb/u_top/o_X_ZERO_CAL_3} \
{/top_tb/u_top/u_stage3/i_clk} \
{/top_tb/input_if_0/valid} \
{/top_tb/u_top/i_valid} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "output_if" 12 )} 
wvSetPosition -win $_nWave2 {("output_if" 12)}
wvSetPosition -win $_nWave2 {("output_if" 12)}
wvSetPosition -win $_nWave2 {("output_if" 12)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/u_top/o_st3_reg_X_ZERO_CAL} \
{/top_tb/u_top/sincos_pre} \
{/top_tb/u_top/o_st3_valid} \
{/top_tb/u_top/sincos_1} \
{/top_tb/u_top/sincos_2} \
{/top_tb/u_top/sincos_3} \
{/top_tb/u_top/i_valid_real} \
{/top_tb/u_top/o_allow} \
{/top_tb/u_top/o_valid} \
{/top_tb/u_top/i_valid} \
}
wvAddSignal -win $_nWave2 -group {"output_if/u_round" \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/o_exp_a\[7:0\]} \
{/top_tb/u_top/o_frac_a\[31:0\]} \
{/top_tb/u_top/o_sign_a} \
{/top_tb/u_top/u_round/G} \
{/top_tb/u_top/u_round/PRE_exp\[7:0\]} \
{/top_tb/u_top/u_round/R} \
{/top_tb/u_top/u_round/STK} \
{/top_tb/u_top/u_round/frac_rounded\[40:0\]} \
{/top_tb/u_top/u_round/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_round/o_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/o_frac_a\[31:0\]} \
{/top_tb/u_top/u_round/round} \
{/top_tb/u_top/o_X_ZERO_CAL_3} \
{/top_tb/u_top/u_stage3/i_clk} \
{/top_tb/input_if_0/valid} \
{/top_tb/u_top/i_valid} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "output_if" 12 )} 
wvSetPosition -win $_nWave2 {("output_if" 12)}
wvGetSignalClose -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 85482.115821 -snap {("output_if" 12)}
wvSetCursor -win $_nWave2 95325.510977 -snap {("output_if" 14)}
wvSetCursor -win $_nWave2 84618.660106 -snap {("output_if" 12)}
wvSetCursor -win $_nWave2 94289.364118 -snap {("output_if" 12)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 84791.351249 -snap {("output_if" 12)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 94634.746404 -snap {("output_if" 14)}
wvSetCursor -win $_nWave2 84445.968963 -snap {("output_if" 12)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "output_if" 7 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 11 )} 
wvSetCursor -win $_nWave2 94462.055261 -snap {("output_if" 12)}
wvSetCursor -win $_nWave2 14851.438304 -snap {("output_if" 14)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/ZERO_NORMAL"
wvGetSignalSetScope -win $_nWave2 "/top_tb"
wvGetSignalSetScope -win $_nWave2 "/top_tb/input_if_0"
wvGetSignalSetScope -win $_nWave2 "/top_tb/output_if"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_fma_single"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_round"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top/u_stage3"
wvGetSignalSetScope -win $_nWave2 "/top_tb/u_top"
wvSetPosition -win $_nWave2 {("output_if" 13)}
wvSetPosition -win $_nWave2 {("output_if" 13)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/u_top/o_st3_reg_X_ZERO_CAL} \
{/top_tb/u_top/sincos_pre} \
{/top_tb/u_top/o_st3_valid} \
{/top_tb/u_top/sincos_1} \
{/top_tb/u_top/sincos_2} \
{/top_tb/u_top/sincos_3} \
{/top_tb/u_top/i_valid_real} \
{/top_tb/u_top/o_allow} \
{/top_tb/u_top/i_valid_reg} \
{/top_tb/u_top/o_valid} \
{/top_tb/u_top/i_valid} \
}
wvAddSignal -win $_nWave2 -group {"output_if/u_round" \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/o_exp_a\[7:0\]} \
{/top_tb/u_top/o_frac_a\[31:0\]} \
{/top_tb/u_top/o_sign_a} \
{/top_tb/u_top/u_round/G} \
{/top_tb/u_top/u_round/PRE_exp\[7:0\]} \
{/top_tb/u_top/u_round/R} \
{/top_tb/u_top/u_round/STK} \
{/top_tb/u_top/u_round/frac_rounded\[40:0\]} \
{/top_tb/u_top/u_round/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_round/o_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/o_frac_a\[31:0\]} \
{/top_tb/u_top/u_round/round} \
{/top_tb/u_top/o_X_ZERO_CAL_3} \
{/top_tb/u_top/u_stage3/i_clk} \
{/top_tb/input_if_0/valid} \
{/top_tb/u_top/i_valid} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "output_if" 13 )} 
wvSetPosition -win $_nWave2 {("output_if" 13)}
wvSetPosition -win $_nWave2 {("output_if" 13)}
wvSetPosition -win $_nWave2 {("output_if" 13)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top_tb/input_if_0/exp8\[7:0\]} \
{/top_tb/input_if_0/frac32\[31:0\]} \
{/top_tb/input_if_0/sin_cos} \
}
wvAddSignal -win $_nWave2 -group {"output_if" \
{/top_tb/output_if/exp8\[7:0\]} \
{/top_tb/output_if/frac32\[31:0\]} \
{/top_tb/output_if/sign} \
{/top_tb/output_if/sin_cos} \
{/top_tb/u_top/o_st3_reg_X_ZERO_CAL} \
{/top_tb/u_top/sincos_pre} \
{/top_tb/u_top/o_st3_valid} \
{/top_tb/u_top/sincos_1} \
{/top_tb/u_top/sincos_2} \
{/top_tb/u_top/sincos_3} \
{/top_tb/u_top/i_valid_real} \
{/top_tb/u_top/o_allow} \
{/top_tb/u_top/i_valid_reg} \
{/top_tb/u_top/o_valid} \
{/top_tb/u_top/i_valid} \
}
wvAddSignal -win $_nWave2 -group {"output_if/u_round" \
{/top_tb/u_top/u_fma_single/o_frac_c_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_c_reg\[7:0\]} \
{/top_tb/u_top/o_exp_a\[7:0\]} \
{/top_tb/u_top/o_frac_a\[31:0\]} \
{/top_tb/u_top/o_sign_a} \
{/top_tb/u_top/u_round/G} \
{/top_tb/u_top/u_round/PRE_exp\[7:0\]} \
{/top_tb/u_top/u_round/R} \
{/top_tb/u_top/u_round/STK} \
{/top_tb/u_top/u_round/frac_rounded\[40:0\]} \
{/top_tb/u_top/u_round/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_round/o_exp_a\[7:0\]} \
{/top_tb/u_top/u_round/o_frac_a\[31:0\]} \
{/top_tb/u_top/u_round/round} \
{/top_tb/u_top/o_X_ZERO_CAL_3} \
{/top_tb/u_top/u_stage3/i_clk} \
{/top_tb/input_if_0/valid} \
{/top_tb/u_top/i_valid} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/top_tb/u_top/u_fma_single/Current_State\[2:0\]} \
{/top_tb/u_top/u_fma_single/Next_State\[2:0\]} \
{/top_tb/u_top/o_st1_valid} \
}
wvAddSignal -win $_nWave2 -group {"u_FADD_N40#1" \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FADD_N40/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"u_FMUL" \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_a\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_exp_b\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_a\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_frac_b\[39:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_a} \
{/top_tb/u_top/u_fma_single/u_FMUL/i_sign_b} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_exp_c\[7:0\]} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_frac_c\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_frac_mul_reg\[39:0\]} \
{/top_tb/u_top/u_fma_single/o_exp_mul_reg\[7:0\]} \
{/top_tb/u_top/u_fma_single/o_sign_mul_reg} \
{/top_tb/u_top/u_fma_single/u_FMUL/o_sign_c} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/top_tb/u_top/u_cof_rec_top/cof_exp_0\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_1\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_2\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_exp_3\[7:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_0\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_1\[39:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_2\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_frac_3\[35:0\]} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_2} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_3} \
{/top_tb/u_top/u_cof_rec_top/cof_sign_rev} \
{/top_tb/u_top/u_fma_single/i_exp_cof1_reg\[7:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_L_7B\[6:0\]} \
{/top_tb/u_top/u_stage3/o_ADDR_S_5B\[4:0\]} \
{/top_tb/u_top/u_stage3/o_st3_valid} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "output_if" 13 )} 
wvSetPosition -win $_nWave2 {("output_if" 13)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "output_if" 13 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetPosition -win $_nWave2 {("output_if" 12)}
wvSetPosition -win $_nWave2 {("output_if" 11)}
wvSetPosition -win $_nWave2 {("output_if" 10)}
wvSetPosition -win $_nWave2 {("output_if" 9)}
wvSetPosition -win $_nWave2 {("output_if" 8)}
wvSetPosition -win $_nWave2 {("output_if" 7)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("output_if" 7)}
wvSetPosition -win $_nWave2 {("output_if" 8)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "output_if" 7 )} 
wvSetPosition -win $_nWave2 {("output_if" 7)}
wvSetPosition -win $_nWave2 {("output_if" 8)}
wvSetPosition -win $_nWave2 {("output_if" 9)}
wvSetPosition -win $_nWave2 {("output_if" 10)}
wvSetPosition -win $_nWave2 {("output_if" 9)}
wvSetPosition -win $_nWave2 {("output_if" 8)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("output_if" 8)}
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "output_if" 7 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 8 )} 
wvScrollDown -win $_nWave2 21
wvSelectSignal -win $_nWave2 {( "G5" 3 )} 
wvScrollDown -win $_nWave2 22
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 53706.945496 -snap {("output_if" 4)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 45417.770628 -snap {("output_if" 11)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 25040.215746 -snap {("output_if" 9)}
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "output_if" 8 )} 
wvSetCursor -win $_nWave2 44899.697199 -snap {("output_if" 8)}
wvSetCursor -win $_nWave2 96707.040121 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 82546.366389 -snap {("output_if" 13)}
verdiWindowResize -win $_Verdi_1 "298" "256" "1435" "629"
verdiWindowResize -win $_Verdi_1 "1177" "717" "960" "1016"
wvScrollDown -win $_nWave2 0
verdiWindowResize -win $_Verdi_1 "4031" -1 "960" "1043"
wvSelectSignal -win $_nWave2 {( "output_if" 7 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 8 )} 
wvSelectSignal -win $_nWave2 {( "output_if" 3 4 5 6 7 8 9 10 11 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("output_if/u_round" 1)}
wvSetPosition -win $_nWave2 {("output_if" 2)}
wvSelectSignal -win $_nWave2 {( "output_if" 5 )} 
wvSetCursor -win $_nWave2 181671.082513 -snap {("output_if" 5)}
wvSetCursor -win $_nWave2 95670.893263 -snap {("G1" 3)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 166474.261923 -snap {("u_round" 1)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 156458.175625 -snap {("u_FADD_N40#1" 3)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 83582.513248 -snap {("u_round" 1)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 125373.769871 -snap {("u_FMUL" 8)}
wvSetCursor -win $_nWave2 146096.707040 -snap {("u_FMUL" 8)}
wvSetCursor -win $_nWave2 125373.769871 -snap {("u_FMUL" 8)}
wvSetCursor -win $_nWave2 146096.707040 -snap {("u_FMUL" 8)}
wvSetCursor -win $_nWave2 164747.350492 -snap {("u_FMUL" 8)}
wvSelectSignal -win $_nWave2 {( "u_FMUL" 9 )} 
wvSetPosition -win $_nWave2 {("u_FMUL" 9)}
wvSetPosition -win $_nWave2 {("u_FMUL" 8)}
wvSetPosition -win $_nWave2 {("u_FMUL" 7)}
wvSetPosition -win $_nWave2 {("u_FMUL" 6)}
wvSetPosition -win $_nWave2 {("u_FMUL" 5)}
wvSetPosition -win $_nWave2 {("u_FMUL" 4)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("u_FMUL" 4)}
wvSetPosition -win $_nWave2 {("u_FMUL" 5)}
wvSetCursor -win $_nWave2 177871.877366 -snap {("u_FMUL" 6)}
wvSetCursor -win $_nWave2 173381.907646 -snap {("u_FMUL" 5)}
wvSetCursor -win $_nWave2 212410.105980 -snap {("u_FMUL" 6)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 177181.112793 -snap {("u_FMUL" 5)}
wvSelectSignal -win $_nWave2 {( "u_FADD_N40#1" 8 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 156803.557911 -snap {("u_FADD_N40#1" 3)}
wvSetCursor -win $_nWave2 172000.378501 -snap {("u_FADD_N40#1" 3)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 157494.322483 -snap {("u_FADD_N40#1" 7)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 124683.005299 -snap {("G5" 2)}
wvSetCursor -win $_nWave2 134353.709311 -snap {("G5" 2)}
wvSetCursor -win $_nWave2 145405.942468 -snap {("G5" 2)}
wvSetCursor -win $_nWave2 155076.646480 -snap {("G5" 2)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 163711.203634 -snap {("G5" 2)}
wvSetCursor -win $_nWave2 171309.613929 -snap {("G5" 2)}
wvSetCursor -win $_nWave2 158875.851628 -snap {("G5" 2)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 165783.497350 -snap {("G5" 2)}
wvSetCursor -win $_nWave2 175108.819076 -snap {("G5" 2)}
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
