vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_CT/SRC/P_CT.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/a_andNot_b/SRC/AND_NOT.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/additionneur_1_generic/SRC/ADD_1_GEN.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/bascule_d/SRC/D_BAS.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/comparateur/SRC/CMP.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/mulitiplexeur_2_vers_1_generic/SRC/MUX_2_1_GEN.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/registre_flip_flop_generic/SRC/REG_FLIP_FLOP_GEN.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/multiplexeur_6_vers_1/SRC/MUX_6_1.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/diviseur_de_frequence/SRC/DIV_FRE.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/detecteur_de_front/SRC/FRONT_DCT.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/compteur_modulo_30/SRC/COMP_30.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/compteur_de_vitesse_sauvgarde_et_fixation/SRC/COMP_V_S_F.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/Decodeur_7_segments/SRC/SEVEN_SEG.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/multiplexeur_temporel/SRC/M_T.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/Afficheur_7_segment/SRC/A_7_S.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/partie_OP_TOP/SRC/P_O.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/architecture_TOP/SRC/C_V_R_M.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/architecture_TOP/test_bench/C_V_R_M_tb.VHD
vsim work.c_v_r_m_tb
add wave sim:/c_v_r_m_tb/*
run
