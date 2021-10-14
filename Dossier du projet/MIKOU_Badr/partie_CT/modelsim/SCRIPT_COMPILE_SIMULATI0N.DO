vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_CT/SRC/P_CT.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_CT/test_bench/P_CT_tb.VHD
vsim work.p_ct_tb
add wave sim:/p_ct_tb/*
run