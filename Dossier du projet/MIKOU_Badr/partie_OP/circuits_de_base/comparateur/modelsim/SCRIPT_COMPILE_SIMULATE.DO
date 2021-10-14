vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/comparateur/SRC/CMP.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/comparateur/test_bench/CMP_tb.VHD
vsim work.cmp_tb
add wave sim:/cmp_tb/*
run