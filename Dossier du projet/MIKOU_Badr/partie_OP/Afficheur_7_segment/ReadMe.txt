--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: ReadMe : Afficheur 7 segment
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
	-- Block 	: partie operative
--**************************************************************************************--
	-- File  	: Readme.txt
	-- Authors 	: MIKOU Badr
	-- Created 	: 00/09/2020
--**************************************************************************************--

    Ce circuit permet d' emvoyé de donnée simultanément des donnees 7 segments vers divers
sorties le temps entre chaque envoie et 1 cycle d' horloge, ce cycle permet d'observer les 
sorties comme si elles ont été envoyer en même temps en recevant la case de la donnée. 

    Vous trouver dans le dosier "SRC" la description de son architecture source en VHDL.

    Vous trouver dans le dosier "test_bench" son architecture source un test bench accorde
une bonne vision simple et générale lors de la simulation, il est en VHDL.

        Le dossier "Quartus" est vide.

    Le dossier "modelsim" contien la Bibliothèque "work" qui represente notre environement
de travail un script d'extension ".do" permet de compiler et de simuler automatiquement l'
architecture. Il' compile les sous blocs avant le bloc principal.

