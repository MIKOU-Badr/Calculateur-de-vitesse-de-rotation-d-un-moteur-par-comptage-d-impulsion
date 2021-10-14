--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: ReadMe : detecteur de front 
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
	-- Block 	: partie operative
--**************************************************************************************--
	-- File  	: Readme.txt
	-- Authors 	: MIKOU Badr
	-- Created 	: 05/09/2020
--**************************************************************************************--

    Le circuit detecteur de front est la base de notre "calculateur de vitesse de rotation
d'un moteur". Il accorde la detection des impultions émises une seule fois même si la fre-
qence de l'impultion est inferieur à celle de l'horloge :
        --> il ya plus de 2 cycle d'orloge dans chaque impultion. Alors pour eviter de de-
        tecter l'impultion plusieur fois ce circuit diminue le nombre de cycle d'horloge à
        1. Il est compsé de :
                        - 2 registre flip flop synchrone avec l'orloge.
                        - un circuit qui calcule le ANDNOT (a AND NOT(b)).

    il travail comme suite :
        - Le principe du détecteur de front est de comparer deux instants successifs ( par 
        rapport à l’horloge ) et de comparer si le signal est passé de l’état 0 à 1. Ainsi
        lorsqu’un front est détecté, la sortie "I_f" passe à 1 pendant 1 cycle d’horloge.

    les impultions données par "i_f" sont utilisées par le compteur modulo 30.

    Vous trouver dans le dosier "SRC" la description de son architecture source en VHDL.

    Vous trouver dans le dosier "test_bench" son architecture source un test bench accorde
une bonne vision simple et générale lors de la simulation, il est en VHDL.

    Le dossier "Quartus" est vide ==> pas d'implementation sur un FPGA.

    Le dossier "modelsim" contien la Bibliothèque "work" qui represente notre environement
de travail un script d'extension ".do" permet de compiler et de simuler automatiquement l'
architecture. Il' compile les sous blocs avant le bloc principal.