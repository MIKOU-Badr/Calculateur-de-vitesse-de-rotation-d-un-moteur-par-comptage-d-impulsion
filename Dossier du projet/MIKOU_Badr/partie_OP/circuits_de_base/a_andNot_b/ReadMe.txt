--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: ReadMe : registre flip flop
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
	-- Block 	: circuit de base
--**************************************************************************************--
	-- File  	: Readme.txt
	-- Authors 	: MIKOU Badr
	-- Created 	: 04/09/2020
--**************************************************************************************--

    Vous trouver dans ce dossier l'architecture d'un circuit combinatoire qui resule un et
logic d'une entrée avec le non de la 2ème entrée. Ce circuit à comme entrées et sorties:
		- "a" et "b" deux entrées sur 1 bit.
		- "s" une sortie sur un bit.
		
    --> quand rst est a zero la sortie s <= 0.
	--> quand rst est a 1 si clk = 0 alors s <= 0 sinon s <= d.

    Vous trouver dans le dosier "SRC" la description de son architecture source en VHDL.

    Vous trouver dans le dosier "test_bench" son architecture source un test bench accorde
une bonne vision simple et générale lors de la simulation, il est en VHDL.

    Le dossier "Quartus" est vide ==> pas d'implementation sur un FPGA.

    Le dossier "modelsim" contien la Bibliothèque "work" qui represente notre environement
de travail un script d'extension ".do" permet de compiler et de simuler automatiquement l'
architecture.

