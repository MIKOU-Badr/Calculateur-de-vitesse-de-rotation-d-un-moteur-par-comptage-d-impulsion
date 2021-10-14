--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: ReadMe : calculateur de vitesse de rotation d'un moteur
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
	-- Block 	: calculateur de vitesse de rotation d'un moteur
--**************************************************************************************--
	-- File  	: Readme.txt
	-- Authors 	: MIKOU Badr
	-- Created 	: 07/09/2020
--**************************************************************************************--

    C'est l'architecture TOP de notre projet il est composé de deux partie : 
					- partie controle (partie_CT)
					- partie opérative (partieà_OP)
Vous trouver dans le dosier "SRC" la description de son architecture source en VHDL.

    Vous trouver dans le dosier "test_bench" son architecture source un test bench accorde
une bonne vision simple et générale lors de la simulation, il est en VHDL.

    Le dossier "Quartus"  ==> le fichier: C_V_R_M.qpf permet de voir son RTLViewer

    Le dossier "modelsim" contien la Bibliothèque "work" qui represente notre environement
de travail un script d'extension ".do" permet de compiler et de simuler automatiquement l'
architecture. Il' compile les sous blocs avant le bloc principal.