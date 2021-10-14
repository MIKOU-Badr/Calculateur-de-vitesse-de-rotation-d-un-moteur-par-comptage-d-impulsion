--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: detecteur de front (l'architecture top)
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
	-- Block 	: partie operative
--**************************************************************************************--
	-- File  	: FRONT_DCT_tb.VHD
	-- Authors 	: MIKOU Badr
	-- Created 	: 04/09/2020
--**************************************************************************************--
	-- Description	:
    -- il detecte les impulsions emises par le moteur d'une manière syncrone avec "clk".
	 
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

ENTITY FRONT_DCT_tb IS 
END FRONT_DCT_tb;

--**************************************************************************************--
--*				    RTL Description				       *--
--**************************************************************************************--

ARCHITECTURE RTL OF FRONT_DCT_tb IS

    -- implementation de la composante a tester.
COMPONENT FRONT_DCT IS PORT (
    rst : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    i   : IN STD_LOGIC;
    i_f   : OUT STD_LOGIC
);
END COMPONENT;

    -- les signaux d'entre et de sortie
SIGNAL r_s : STD_LOGIC;
SIGNAL c_s : STD_LOGIC;
SIGNAL e_s : STD_LOGIC;
SIGNAL s_s : STD_LOGIC;

BEGIN

    -- mapping
fd0 : FRONT_DCT PORT MAP (
    rst => r_s,
    clk => c_s,
    i   => e_s,
    i_f => s_s
);

-- les valeurs d'entré
e0 : PROCESS 
BEGIN
    e_s <= '0';
    WAIT FOR 63 NS;
    e_s <= '1';
    WAIT FOR 63 NS;
END PROCESS;

-- le processus de teste
reset0 : PROCESS 
BEGIN
    r_s <= '0';
    wait for 35 NS;
    r_s <= '1';
    wait for 1000 NS;
END PROCESS;

horloge : PROCESS
BEGIN 
    c_s <= '0';
    wait for 20 NS;
    c_s <= '1';
    wait for 20 NS;
END PROCESS;

END RTL;