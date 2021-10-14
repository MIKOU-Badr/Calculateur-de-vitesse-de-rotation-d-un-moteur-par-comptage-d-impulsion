vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/mulitiplexeur_2_vers_1_generic/SRC/MUX_2_1_GEN.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/mulitiplexeur_2_vers_1_generic/test_bench/MUX_2_1_tb_GEN.VHD
vsim work.mux_2_1_GEN_tb
add wave sim:/mux_2_1_GEN_tb/*
run