vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/bascule_d/SRC/D_BAS.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/bascule_d/test_bench/D_BAS_tb.VHD
vsim work.d_bas_tb
add wave sim:/d_bas_tb/*
run