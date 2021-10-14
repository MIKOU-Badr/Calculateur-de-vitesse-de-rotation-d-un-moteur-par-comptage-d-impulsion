vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/Afficheur_7_segment/SRC/A_7_S.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/Afficheur_7_segment/test_bench/A_7_S_tb.VHD
vsim  work.a_7_s_tb
add wave sim:/a_7_s_tb/*
run