vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/additionneur_1_generic/SRC/ADD_1_GEN.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/additionneur_1_generic/test_bench/ADD_1_GEN_tb.VHD
vsim work.add_1_gen_tb
add wave sim:/add_1_gen_tb/*
run