vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/Decodeur_7_segments/SRC/SEVEN_SEG.VHD
vcom -reportprogress 300 -work work D:/MIKOU_Badr/partie_OP/Decodeur_7_segments/test_bunsh/SEVEN_SEG_tb.VHD
vsim work.seven_seg_tb
add wave sim:/seven_seg_tb/*
run