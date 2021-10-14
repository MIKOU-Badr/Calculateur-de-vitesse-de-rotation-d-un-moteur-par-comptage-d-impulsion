vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/bascule_d/SRC/D_BAS.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/diviseur_de_frequence/SRC/DIV_FRE.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/diviseur_de_frequence/test_bench/DIV_FRE_tb.VHD
vsim work.div_fre_tb
add wave sim:/div_fre_tb/*
run