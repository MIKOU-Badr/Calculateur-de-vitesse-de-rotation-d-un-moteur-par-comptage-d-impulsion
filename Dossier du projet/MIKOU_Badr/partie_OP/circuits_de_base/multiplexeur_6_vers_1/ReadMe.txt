--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: ReadMe : multiplexeur 6 vers 1 
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
	-- Block 	: circuit de base
--**************************************************************************************--
	-- File  	: Readme.txt
	-- Authors 	: MIKOU Badr
	-- Created 	: 08/09/2020
--**************************************************************************************--

    Vous trouver dans ce dossier l' architecture du cercuit d'un multiplexeur 6 vers 1 qui 
est une architecture de base dans divers cercuit electronique. Ce multiplexeur est composé
de 7 entrées et une sortie :
		- "inI" des données sur 4 bits (I : 0 --> 5).
		- "sel" entrée de selection codé sur 1 bit.
		- "y" sortie sur 4 bits.

    --> la sortie y prend la valeur de in1 si la l'entre de selection sel = 1.
	--> la sortie y prend la valeur de in0 si la l'entre de selection sel = 0.

    Vous trouver dans le dosier "SRC" la description de son architecture source en VHDL.

   Vous trouver dans le dosier "test_bench" dans le quel il y a test_bench qui acorde une
bonne vision simple et générale lors de la simulation, il est en VHDL.

    Le dossier "Quartus" est vide ==> pas d'implementation sur un FPGA.

    Le dossier "modelsim" contien la Bibliothèque "work" qui represente notre environement
de travail un script d'extension ".do" permet de compiler et de simuler automatiquement l'
architecture.

