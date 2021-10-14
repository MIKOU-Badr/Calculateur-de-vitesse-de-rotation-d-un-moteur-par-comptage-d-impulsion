--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: ReadMe : aditionneur de 1 generique
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
	-- Block 	: circuit de base
--**************************************************************************************--
	-- File  	: Readme.txt
	-- Authors 	: MIKOU Badr
	-- Created 	: 05/09/2020
--**************************************************************************************--

    Vous trouver dans ce dossier l' architecture du cercuit d'un additionneur de 1 qui est
une architecture de base dans divers cercuit electronique. Cet additionneur se compose de:
		- "d" entrée generic.
		- "s" est la sortie de cet architecture et elle est generic.

    --> s reçoit d + 1 

    Vous trouver dans le dosier "SRC" la description de son architecture source en VHDL.

    Vous trouver dans le dosier "test_bench" dans le quel il y a test_bench qui acorde une
bonne vision simple et générale lors de la simulation, il est en VHDL.

    Le dossier "Quartus" est vide ==> pas d'implementation sur un FPGA.

    Le dossier "modelsim" contien la Bibliothèque "work" qui represente notre environement
de travail un script d'extension ".do" permet de compiler et de simuler automatiquement l'
architecture.

