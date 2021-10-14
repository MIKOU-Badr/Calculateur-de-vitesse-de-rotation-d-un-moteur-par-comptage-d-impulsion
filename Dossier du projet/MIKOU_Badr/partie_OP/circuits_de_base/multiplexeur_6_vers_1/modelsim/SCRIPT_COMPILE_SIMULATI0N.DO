vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/multiplexeur_6_vers_1/SRC/MUX_6_1.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/multiplexeur_6_vers_1/test_bench/MUX_6_1_tb.VHD
vsim work.mux_6_1_tb
add wave sim:/mux_6_1_tb/*
run