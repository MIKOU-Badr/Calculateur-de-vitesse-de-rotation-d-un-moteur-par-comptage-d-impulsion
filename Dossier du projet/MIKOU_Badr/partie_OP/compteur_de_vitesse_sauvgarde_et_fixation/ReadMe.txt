--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: ReadMe : compteur de vitesse : sauvgarde et rotation
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
	-- Block 	: partie operative
--**************************************************************************************--
	-- File  	: Readme.txt
	-- Authors 	: MIKOU Badr
	-- Created 	: 06/09/2020
--**************************************************************************************--

    Le compteur de vitesse c' est un compteur qui s’incrémente à chaque cycle d’horloge et
qui est remis à zéro, soit par le raz global du circuit, soit par cmpt30 provenant du com-
pteur modulo 30.
	Ensuite, il ya  un étage de sauvegarde de la valeur de la vitesse à chaque fois que le
moteur fait 1 tour.
	Enfin, l’ étage de fixation permet de fixer la valeur de sortie pendant que le système
externe la lit.
	il' est composée de :
					- 3 multiplexeur 2 vers 1.
					- 3 registre flip flop.
					- 1 additioneur de 1.

    Vous trouver dans le dosier "SRC" la description de son architecture source en VHDL.

    Vous trouver dans le dosier "test_bench" son architecture source un test bench accorde
une bonne vision simple et générale lors de la simulation, il est en VHDL.

    Le dossier "Quartus" est vide ==> pas d'implementation sur un FPGA.

    Le dossier "modelsim" contien la Bibliothèque "work" qui represente notre environement
de travail un script d'extension ".do" permet de compiler et de simuler automatiquement l'
architecture. Il' compile les sous blocs avant le bloc principal.