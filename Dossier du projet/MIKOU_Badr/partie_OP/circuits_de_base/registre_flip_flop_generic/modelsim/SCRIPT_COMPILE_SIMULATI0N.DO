vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/registre_flip_flop_generic/SRC/REG_FLIP_FLOP_GEN.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/registre_flip_flop_generic/test_bench/REG_FLIP_FLOP_GEN_tb.VHD
vsim work.reg_flip_flop_gen_tbadd wave sim:/reg_flip_flop_gen_tb/*
run