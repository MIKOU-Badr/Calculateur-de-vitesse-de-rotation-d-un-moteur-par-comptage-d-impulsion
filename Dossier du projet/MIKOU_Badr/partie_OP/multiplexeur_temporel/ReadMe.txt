--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: ReadMe : partie operative (l'architecture top)
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
	-- Block 	: partie operative
--**************************************************************************************--
	-- File  	: Readme.txt
	-- Authors 	: MIKOU Badr
	-- Created 	: 06/09/2020
--**************************************************************************************--

    a chaque cycle d' horloge il envoie un dans la sortie une des entrees vers un decodeur
7 segments puit vers l'afficheur 7 segments es tenvoie la case de la donné.

    Vous trouver dans le dosier "SRC" la description de son architecture source en VHDL.

    Vous trouver dans le dosier "test_bench" son architecture source un test bench accorde
une bonne vision simple et générale lors de la simulation, il est en VHDL.

        Le dossier "Quartus" est vide.

    Le dossier "modelsim" contien la Bibliothèque "work" qui represente notre environement
de travail un script d'extension ".do" permet de compiler et de simuler automatiquement l'
architecture. Il' compile les sous blocs avant le bloc principal.

