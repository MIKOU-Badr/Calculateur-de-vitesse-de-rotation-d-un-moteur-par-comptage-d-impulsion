--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: ReadMe : compteur modulo 30 
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
	-- Block 	: partie operative
--**************************************************************************************--
	-- File  	: Readme.txt
	-- Authors 	: MIKOU Badr
	-- Created 	: 05/09/2020
--**************************************************************************************--

    Ce circuit a comme rôle de compter 30 impulsions venant du moteur par l ’intermédiaire
de "I_f. Une fois les 30 impulsions atteintes, le compteur génère un signal cmpt30 pendant
une période de l’horloge qui indique au compteur de vitesse de sauvegarder sa valeur et de
recommencer à zéro. il est composé de  :
                        - 2 Multiplexeur 2 vers 1.
                        - un aditionneur de 1.
                        - un registre flip flop.
                        - un comparateur.

    Vous trouver dans le dosier "SRC" la description de son architecture source en VHDL.

    Vous trouver dans le dosier "test_bench" son architecture source un test bench accorde
une bonne vision simple et générale lors de la simulation, il est en VHDL.

    Le dossier "Quartus" est vide ==> pas d'implementation sur un FPGA.

    Le dossier "modelsim" contien la Bibliothèque "work" qui represente notre environement
de travail un script d'extension ".do" permet de compiler et de simuler automatiquement l'
architecture. Il' compile les sous blocs avant le bloc principal.

