vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/a_andNot_b/SRC/AND_NOT.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/circuits_de_base/a_andNot_b/test_bench/AND_NOT_tb.VHD
vsim work.and_not_tb
add wave sim:/and_not_tb/*
run