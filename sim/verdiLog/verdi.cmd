debImport "-sv" "-f" "AHB_SRAM.f"
debLoadSimResult /tmp/.X11-unix/AHB_SRAM/sim/AHB_SRAM.fsdb
wvCreateWindow
verdiSetFont -font "Bitstream Vera Sans" -size "18"
verdiSetFont -monoFont "Courier" -monoFontSize "18"
paSetPreference -showPowerState off
simSetInteractiveFsdbFile inter.fsdb
simSetSimMode on
srcSetPreference -filterPowerAwareInstruments off -profileTime off
tbvSetPreference -dynamicDumpMDA 1 -dynamicDumpStruct 1 -dynamicDumpSystemCStruct \
           1 -dynamicDumpSystemCPlain 1 -dynamicDumpSystemCFIFO 1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {11 42 1 1 1 1} -backward
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
verdiWindowBeWindow -win $_nWave2
wvResizeWindow -win $_nWave2 76 26 1834 396
wvResizeWindow -win $_nWave2 76 26 1834 1009
wvResizeWindow -win $_nWave2 76 26 1834 1009
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 173138.489761 -snap {("G2" 0)}
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
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 327780.582645 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 327816.975047 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 327814.406172 -snap {("G1" 14)}
srcActiveTrace "AHB_SRAM_tb.hrdata\[31:0\]" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 327783 -TraceValue xxxxxxxxxxxxxxxxxxxxxxxx00000000
srcSetOptions -win $_nTrace1 -annotate on
schSetOptions -win $_nSchema1 -annotate on
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 327859.361491 -snap {("G1" 12)}
wvSetCursor -win $_nWave2 327884.622100 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 327861.930367 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 327902.176082
wvSetCursor -win $_nWave2 327911.595292
wvGoToTime -win $_nWave2 327920
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSetCursor -win $_nWave2 327859.845501 -snap {("G1" 12)}
wvSetCursor -win $_nWave2 327900.519361 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 327859.417355 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 327880.824650 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 327857.704771 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 327877.399483 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 327855.135896 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 327919.785927 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 327855.992188 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 327898.378632 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 327857.704771 -snap {("G1" 1)}
wvSelectSignal -win $_nWave2 {( "G1" 12 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 13 14 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 14 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 14 16 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 14 15 16 )} 
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 14 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 14 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSelectGroup -win $_nWave2 {G3}
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 )} {( "G2" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 2 )} {( "G2" 1 )} 
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSetCursor -win $_nWave2 327906.513404 -snap {("G3" 0)}
wvSetCursor -win $_nWave2 327841.863373 -snap {("G2" 2)}
wvSelectGroup -win $_nWave2 {G3}
srcHBSelect "AHB_SRAM_tb" -win $_nTrace1
srcHBSelect "AHB_SRAM_tb.sram_instance" -win $_nTrace1
srcSetScope -win $_nTrace1 "AHB_SRAM_tb.sram_instance" -delim "."
srcHBSelect "AHB_SRAM_tb.sram_instance" -win $_nTrace1
srcHBSelect "AHB_SRAM_tb.sram_instance" -win $_nTrace1
srcHBSelect "AHB_SRAM_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "AHB_SRAM_tb" -delim "."
srcHBSelect "AHB_SRAM_tb" -win $_nTrace1
srcHBSelect "AHB_SRAM_tb" -win $_nTrace1
srcHBSelect "AHB_SRAM_tb.sram_instance" -win $_nTrace1
srcSetScope -win $_nTrace1 "AHB_SRAM_tb.sram_instance" -delim "."
srcHBSelect "AHB_SRAM_tb.sram_instance" -win $_nTrace1
srcHBSelect "AHB_SRAM_tb.sram_instance.u_a" -win $_nTrace1
srcSetScope -win $_nTrace1 "AHB_SRAM_tb.sram_instance.u_a" -delim "."
srcHBSelect "AHB_SRAM_tb.sram_instance.u_a" -win $_nTrace1
srcHBSelect "AHB_SRAM_tb.sram_instance.u_a" -win $_nTrace1
srcSetScope -win $_nTrace1 "AHB_SRAM_tb.sram_instance.u_a" -delim "."
srcHBSelect "AHB_SRAM_tb.sram_instance.u_a" -win $_nTrace1
srcHBSelect "AHB_SRAM_tb.sram_instance.u_a" -win $_nTrace1
srcSetScope -win $_nTrace1 "AHB_SRAM_tb.sram_instance.u_a" -delim "."
srcHBSelect "AHB_SRAM_tb.sram_instance.u_a" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "haddr" -line 28 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hburst_r" -line 78 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hsize_r" -line 79 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "htrans_r" -line 77 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "haddr_r" -line 76 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 327892.384589 -snap {("G2" 5)}
wvSetCursor -win $_nWave2 327855.135896 -snap {("G2" 3)}
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 327913.363739 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 327820.027932 -snap {("G2" 2)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 327830.731579 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 327641.062945 -snap {("G1" 13)}
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
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
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
wvSetCursor -win $_nWave2 327764.741247 -snap {("G1" 12)}
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
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 327780.582645 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 59.940426 -snap {("G1" 8)}
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSetCursor -win $_nWave2 97.189120 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 140.003710 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 56.943405 -snap {("G2" 3)}
wvSetCursor -win $_nWave2 101.042433 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 60.368572 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 99.757995 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 58.227843 -snap {("G2" 3)}
wvSetCursor -win $_nWave2 98.473558 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 59.940426 -snap {("G2" 3)}
wvSetCursor -win $_nWave2 95.476536 -snap {("G1" 10)}
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
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
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
wvZoomIn -win $_nWave2
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
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
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
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 8 )} {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 8 )} {( "G2" 3 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 8 )} {( "G2" 2 3 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 8 )} {( "G2" 3 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 8 )} {( "G2" 3 4 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 8 )} {( "G2" 3 4 5 )} 
wvSetRadix -win $_nWave2 -format UDec
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 327801.989940 -snap {("G3" 0)}
wvSetCursor -win $_nWave2 327791.286293 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 327813.978026 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 327693.240881 -snap {("G1" 13)}
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
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 327777.799697 -snap {("G2" 2)}
srcHBSelect "AHB_SRAM_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "AHB_SRAM_tb" -delim "."
srcHBSelect "AHB_SRAM_tb" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hrdata" -line 34 -pos 1 -win $_nTrace1
srcAction -pos 33 9 3 -win $_nTrace1 -name "hrdata" -ctrlKey off
wvSetCursor -win $_nWave2 327802.632159 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 327777.799697 -snap {("G2" 2)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "sram_d_2" -line 157 -pos 1 -win $_nTrace1
srcAction -pos 156 15 4 -win $_nTrace1 -name "sram_d_2" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "addr0_reg" -win $_nTrace1
srcAction -pos 74 10 10 -win $_nTrace1 -name "mem\[addr0_reg\]" -ctrlKey off
srcHBSelect "AHB_SRAM_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "AHB_SRAM_tb" -delim "."
srcHBSelect "AHB_SRAM_tb" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hrdata" -line 34 -pos 1 -win $_nTrace1
srcAction -pos 33 9 3 -win $_nTrace1 -name "hrdata" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "sram_d_3" -line 157 -pos 1 -win $_nTrace1
srcAction -pos 156 13 1 -win $_nTrace1 -name "sram_d_3" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "web0_reg" -line 74 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "addr0_reg" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "web0_reg" -line 74 -pos 1 -win $_nTrace1
srcAction -pos 73 9 3 -win $_nTrace1 -name "web0_reg" -ctrlKey off
wvSetCursor -win $_nWave2 327756.392402 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 327776.087113 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 327747.829484 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 327758.104985 -snap {("G2" 2)}
srcTraceValueChange "AHB_SRAM_tb.sram_instance.uut.b3.s1.web0_reg" -win $_nTrace1
srcActiveTrace "AHB_SRAM_tb.sram_instance.uut.b3.s1.web0_reg" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "web0" -line 46 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "web0_reg" -line 46 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "web0_reg" -line 46 -pos 1 -win $_nTrace1
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 327780.261536 -snap {("G2" 1)}
debReload
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcHBSelect "AHB_SRAM_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "AHB_SRAM_tb" -delim "."
srcHBSelect "AHB_SRAM_tb" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hrdata" -line 34 -pos 1 -win $_nTrace1
srcAction -pos 33 9 4 -win $_nTrace1 -name "hrdata" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sram_d_3" -line 157 -pos 1 -win $_nTrace1
srcAction -pos 156 13 6 -win $_nTrace1 -name "sram_d_3" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "web0_reg" -line 74 -pos 1 -win $_nTrace1
srcAction -pos 73 9 5 -win $_nTrace1 -name "web0_reg" -ctrlKey off
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 327800.812539 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 327819.865032 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 327778.763025 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 327760.566824 -snap {("G2" 2)}
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "web0" -line 46 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "web0" -line 46 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "web0" -line 46 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "web0" -line 46 -pos 1 -win $_nTrace1
srcAction -pos 45 5 3 -win $_nTrace1 -name "web0" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "wen" -line 35 -pos 1 -win $_nTrace1
srcAction -pos 34 15 0 -win $_nTrace1 -name "wen" -ctrlKey off
wvSetCursor -win $_nWave2 327780.047463 -snap {("G2" 2)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcHBSelect "AHB_SRAM_tb.sram_instance" -win $_nTrace1
srcSetScope -win $_nTrace1 "AHB_SRAM_tb.sram_instance" -delim "."
srcHBSelect "AHB_SRAM_tb.sram_instance" -win $_nTrace1
srcHBSelect "AHB_SRAM_tb.sram_instance" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hrdata" -line 26 -pos 1 -win $_nTrace1
srcAction -pos 25 9 4 -win $_nTrace1 -name "hrdata" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "sram_d_3" -line 157 -pos 1 -win $_nTrace1
srcAction -pos 156 13 2 -win $_nTrace1 -name "sram_d_3" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "web0_reg" -line 74 -pos 1 -win $_nTrace1
srcAction -pos 73 9 6 -win $_nTrace1 -name "web0_reg" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "web0_reg" -line 46 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "web0_reg" -line 46 -pos 1 -win $_nTrace1
srcSearchString "web0_reg" -win $_nTrace1 -next -case
srcSearchString "web0_reg" -win $_nTrace1 -next -case
srcSearchString "web0_reg" -win $_nTrace1 -next -case
srcSearchString "web0_reg" -win $_nTrace1 -next -case
srcSearchString "web0_reg" -win $_nTrace1 -next -case
srcSearchString "web0_reg" -win $_nTrace1 -next -case
wvResizeWindow -win $_nWave2 0 34 1920 1009
wvResizeWindow -win $_nWave2 86 34 1834 1009
wvSetCursor -win $_nWave2 327760.138678 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 327777.906733 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 327761.209043 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 327781.117828 -snap {("G2" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
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
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetCursor -win $_nWave2 115.171248 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 119.452707 -snap {("G2" 2)}
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
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 327779.512281 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 327822.326871 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 327778.655989 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 327818.901704 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 327860.860002 -snap {("G2" 1)}
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 327840.367677 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 327800.121962 -snap {("G2" 2)}
debReload
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 327758.591809 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 327799.693816 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 327757.307372 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 327778.714667 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 327820.244819 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 327857.493513 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 328307.903003 -snap {("G3" 0)}
wvResizeWindow -win $_nWave2 0 34 1920 1009
wvResizeWindow -win $_nWave2 86 34 1834 1009
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvSelectSignal -win $_nWave2 {( "G2" 3 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 3 4 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSelectSignal -win $_nWave2 {( "G2" 3 4 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 327950.829320 -snap {("G3" 0)}
debReload
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 328277.076498 -snap {("G3" 0)}
wvResizeWindow -win $_nWave2 1216 518 1834 396
wvTpfCloseForm -win $_nWave2
wvGetSignalClose -win $_nWave2
wvCloseWindow -win $_nWave2
debExit
