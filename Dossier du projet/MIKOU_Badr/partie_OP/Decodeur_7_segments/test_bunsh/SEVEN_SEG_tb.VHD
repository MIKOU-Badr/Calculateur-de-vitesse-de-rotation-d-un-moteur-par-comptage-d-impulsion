--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: comparateur
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
    -- Block 	: circuit de base
--**************************************************************************************--
	-- File  	: SEVEN_SEG_tb.VHD
	-- Authors 	: MIKOU Badr
	-- Created 	: 06/09/2020
--**************************************************************************************--
	-- Description	:
	-- Les segments sont traditionnellement identifies par les valeurs de 0 -> 6. 
	--Dans notre module, la sortie est un vecteur croissant de 1 -> 7 
	--correspondant aux segments 0 -> 6 

--**************************************************************************************--


--**************************************************************************************--
--*				     Used Libraries				       *--
--**************************************************************************************--
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
--**************************************************************************************--
--*				   ENTITY Declaration				       *--
--**************************************************************************************--
ENTITY SEVEN_SEG_tb IS
END SEVEN_SEG_tb;
--**************************************************************************************--
--*				    RTL Description				       *--
--**************************************************************************************--
ARCHITECTURE RTL OF SEVEN_SEG_tb IS
    COMPONENT SEVEN_SEG IS PORT (
	   pol  : IN STD_LOGIC;
	   data : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	   seg_out : OUT STD_LOGIC_VECTOR(1 TO 7));
	 END COMPONENT;
	 
	 SIGNAL pol_s : STD_LOGIC;
	 SIGNAL data_S : STD_LOGIC_VECTOR(3 DOWNTO 0);
	 SIGNAL seg_out_s :STD_LOGIC_VECTOR(1 TO 7);
	 
	 BEGIN
	     sev : SEVEN_SEG PORT MAP (
	     pol => pol_s,
	     data => data_s,
	     seg_out => seg_out_s);
	     
	     PROCESS
	         BEGIN
	             pol_s <= '0';
	             WAIT FOR 100 NS;
	             pol_s <= '1';
	             WAIT FOR 100 NS;
	             
	     END PROCESS;
	     PROCESS
	         BEGIN
	             DATA_s <= "0001";
	             WAIT FOR 200 NS;
	             DATA_s <= "0010";
	             WAIT FOR 200 NS;
	             DATA_s <= "0100";
	             WAIT FOR 200 NS;
	             DATA_s <= "1000";
	             WAIT FOR 200 NS;
	     END PROCESS;
END RTL;