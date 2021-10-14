vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/additionneur_1_generic/SRC/ADD_1_GEN.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/mulitiplexeur_2_vers_1_generic/SRC/MUX_2_1_GEN.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/registre_flip_flop_generic/SRC/REG_FLIP_FLOP_GEN.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/compteur_de_vitesse_sauvgarde_et_fixation/SRC/COMP_V_S_F.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/compteur_de_vitesse_sauvgarde_et_fixation/test_bench/COMP_V_S_F_tb.VHD
vsim work.comp_v_s_f_tb
add wave sim:/comp_v_s_f_tb/*
run