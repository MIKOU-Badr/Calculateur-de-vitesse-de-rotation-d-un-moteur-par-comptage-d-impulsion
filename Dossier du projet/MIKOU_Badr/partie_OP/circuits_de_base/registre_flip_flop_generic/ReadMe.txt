--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: ReadMe : registre flip flop generic
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
	-- Block 	: circuit de base
--**************************************************************************************--
	-- File  	: Readme.txt
	-- Authors 	: MIKOU Badr
	-- Created 	: 04/09/2020
--**************************************************************************************--

    Vous trouver dans ce dossier l'architecture du cercuit d'un regidtre flip flop qui est
une architecture de base dans divers cercuit electronique. Ce regidtre se compose de trois
entrées est une sortie :
		- "d" bite de donnée il est generic.
		- une comme horloge "clk".
		- la dernière "rst" sers pour faire passer "s" à 0 (active bas). 
		- "s" est la sortie de cet architecture et il est generic. 

    --> quand rst est a zero la sortie s <= 0.
	--> quand rst est a 1 si clk = 0 alors s <= S sinon s <= d.

    Vous trouver dans le dosier "SRC" la description de son architecture source en VHDL.

    Vous trouver dans le dosier "test_bench" dans le quel il y a test_bench qui acorde une
bonne vision simple et générale lors de la simulation, il est en VHDL.

    Le dossier "Quartus" est vide ==> pas d'implementation sur un FPGA.

    Le dossier "modelsim" contien la Bibliothèque "work" qui represente notre environement
de travail un script d'extension ".do" permet de compiler et de simuler automatiquement l'
architecture.

