--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: ReadMe : L’environnement technique du projet 
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
	-- Block 	: partie operative
--**************************************************************************************--
	-- File  	: Readme.txt
	-- Authors 	: MIKOU Badr
	-- Created 	: 08/09/2020
--**************************************************************************************--
	Logiciel de conception et de simulation :
		Le logiciel utiliser pour la conception des circuits que cela soit des circuits de
		base ou des sous-blocks ou les blocks principaux ou l’architecture TOP est : 
						*** MODELSIM PE STUDENT EDITION ***.

		La conception de chaque circuit se fait dans un dossier qui porte le nom est divi-
		sé en quatre sous dossiers :
				-> Le dossier modelsim : dont il y a un scripte de compilation et de simu-
				lation avec une extension «.do» et la bibliothèque work qui est represente 
				l'environnement de compilation et de simulation.
					==> le dossier de circuit doit etre dand le disque D
						pour que le script fonctionne 

				-> le dossier Quartus : dans lequel il y a la synthèse sur la carte FPGA.

				-> le dossier SRC : dans lequel il y a la description VHDL du circuit.

				-> le dossier teste_bench : on y trouve la description du teste du circuit
				(la simulation)
		

	Logiciel de synthèse :
		Le logiciel utiliser pour la synthèse est QUARTUS II 9.0 (32 bits).

		La carte utilisé pour la synthèse et une carte FPGA de la famille Cyclone II et de
		code EP2C70F896C6


	tous les codes sont dans conseption_simulation_syntèse.rar

    