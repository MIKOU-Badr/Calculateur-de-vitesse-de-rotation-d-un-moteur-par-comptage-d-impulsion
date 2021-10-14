vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/registre_flip_flop_generic/SRC/REG_FLIP_FLOP_GEN.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/a_andNot_b/SRC/AND_NOT.VHD
vcom -work work -O0 D:/MIKOU_Badr/partie_OP/detecteur_de_front/SRC/FRONT_DCT.VHD
vcom -work work -O0 D:/MIKOU_Badr/partie_OP/detecteur_de_front/test_bench/FRONT_DCT_tb.VHD
vsim work.front_dct_tb
add wave sim:/front_dct_tb/*
run