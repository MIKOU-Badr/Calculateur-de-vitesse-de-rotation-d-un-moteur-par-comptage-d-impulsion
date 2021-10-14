--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: ReadMe : partie controle
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
	-- Block 	: partie controle
--**************************************************************************************--
	-- File  	: Readme.txt
	-- Authors 	: MIKOU Badr
	-- Created 	: 06/09/2020
--**************************************************************************************--

    C'est une machine a etat qui le bon visionement de la vitesse de rotation du moteur.
    elle est composé de 3 etat : 
			- Attente.
			- request.
			-Acknolege

    Vous trouver dans le dosier "SRC" la description de son architecture source en VHDL.

    Vous trouver dans le dosier "test_bench" son architecture source un test bench accorde
une bonne vision simple et générale lors de la simulation, il est en VHDL.

    Le dossier "Quartus"  ==> le fichier: P_C.qpf permet de voir son RTLViewer

    Le dossier "modelsim" contien la Bibliothèque "work" qui represente notre environement
de travail un script d'extension ".do" permet de compiler et de simuler automatiquement l'
architecture. Il' compile les sous blocs avant le bloc principal.

