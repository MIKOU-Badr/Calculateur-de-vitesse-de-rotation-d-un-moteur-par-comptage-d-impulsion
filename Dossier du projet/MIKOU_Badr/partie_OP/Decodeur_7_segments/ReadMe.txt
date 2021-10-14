--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: ReadMe : decodeur 7 segments
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
	-- Block 	: circuit de base
--**************************************************************************************--
	-- File  	: Readme.txt
	-- Authors 	: MIKOU Badr
	-- Created 	: 06/09/2020
--**************************************************************************************--

    Ce circuit permet de decodé une entré de 4 bits (HEXAdecimal) en une sortie sur 7 bits
a fin de l'aficher sur un aficheur 7 segments

    Vous trouver dans le dosier "SRC" la description de son architecture source en VHDL.

    Vous trouver dans le dosier "test_bench" son architecture source un test bench accorde
une bonne vision simple et générale lors de la simulation, il est en VHDL.

    Le dossier "Quartus" est vide ==> pas d'implementation sur un FPGA.

    Le dossier "modelsim" contien la Bibliothèque "work" qui represente notre environement
de travail un script d'extension ".do" permet de compiler et de simuler automatiquement l'
architecture.

