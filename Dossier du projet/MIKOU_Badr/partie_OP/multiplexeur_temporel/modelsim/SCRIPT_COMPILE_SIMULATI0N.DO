vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/additionneur_1_generic/SRC/ADD_1_GEN.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/comparateur/SRC/CMP.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/mulitiplexeur_2_vers_1_generic/SRC/MUX_2_1_GEN.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/multiplexeur_6_vers_1/SRC/MUX_6_1.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/registre_flip_flop_generic/SRC/REG_FLIP_FLOP_GEN.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/multiplexeur_temporel/SRC/M_T.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/multiplexeur_temporel/test_bench/M_T_tb.VHD
vsim work.m_t_tb
add wave sim:/m_t_tb/*
run