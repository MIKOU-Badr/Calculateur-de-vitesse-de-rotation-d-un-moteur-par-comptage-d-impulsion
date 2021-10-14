--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: a and not(b)
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
	-- Block 	: circuit de base
--**************************************************************************************--
	-- File  	: AND_NOT_tb.VHD
	-- Authors 	: MIKOU Badr
	-- Created 	: 04/09/2020
--**************************************************************************************--
	-- Description	:
    -- s <= a and not (b);
	 
--**************************************************************************************--


--**************************************************************************************--
--*				     Used Libraries				       *--
--**************************************************************************************--
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL; 
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
--**************************************************************************************--
--*				   ENTITY Declaration				       *--
--**************************************************************************************--

ENTITY AND_NOT_tb IS 
END AND_NOT_tb;

--**************************************************************************************--
--*				    RTL Description				       *--
--**************************************************************************************--

ARCHITECTURE RTL OF AND_NOT_tb IS

    -- implementation de la composante a tester.
COMPONENT AND_NOT IS PORT (
    a : IN STD_LOGIC;
    b : IN STD_LOGIC;
    s : OUT STD_LOGIC
);
END COMPONENT; 
    -- les signaux d'entre et de sortie
SIGNAL a_s : STD_LOGIC;
SIGNAL b_s : STD_LOGIC;
SIGNAL s_s : STD_LOGIC;
BEGIN

    --mapping 
a0 : AND_NOT PORT MAP (
    a => a_s,
    b => b_s,
    s => s_s
);

-- les valeurs d'entré
donnee_a : PROCESS
BEGIN 
    a_s <= '0';
    WAIT FOR 100 NS;
    a_s <= '1';
    WAIT FOR 100 NS;
END PROCESS;

donnee_b : PROCESS 
BEGIN
    b_s <= '0';
    WAIT FOR 50 NS;
    b_s <= '1';
    WAIT FOR 50 NS;
END PROCESS;

END RTL;