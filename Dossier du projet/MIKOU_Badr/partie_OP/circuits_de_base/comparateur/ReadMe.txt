--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: ReadMe : comparateur
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
	-- Block 	: circuit de base
--**************************************************************************************--
	-- File  	: Readme.txt
	-- Authors 	: MIKOU Badr
	-- Created 	: 04/09/2020
--**************************************************************************************--

    Vous trouver dans ce dossier l'le architecture du cercuit comparateur qui modélise une 
architecture de base dans divers cercuit electronique. Ce comparateur se compose de:
		- "in1" et "in0" 2 entrées sur 5 bits.
		- "y" est la sortie de cet architecture codé sur 1 bit : 

    --> y reçoit 1 si et seulement si "in1" = "in2".

    Vous trouver dans le dosier "SRC" la description de son architecture source en VHDL.

    Vous trouver dans le dosier "test_bench" dans le quel il y a test_bench qui acorde une
bonne vision simple et générale lors de la simulation, il est en VHDL.

    Le dossier "Quartus" est vide ==> pas d'implementation sur un FPGA.

    Le dossier "modelsim" contien la Bibliothèque "work" qui represente notre environement
de travail un script d'extension ".do" permet de compiler et de simuler automatiquement l'
architecture.

