--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: compteur modulo 30 (architecture top)
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
    -- Block 	: partie operative
--**************************************************************************************--
	-- File  	: COMP_30_tb.VHD
	-- Authors 	: MIKOU Badr
	-- Created 	: 05/09/2020
--**************************************************************************************--
	-- Description	:
	--  il genere une impulsion apres qu'il calcule de 0 jusqu'à 29
	 
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

ENTITY COMP_30_tb IS 
END COMP_30_tb;

--**************************************************************************************--
--*				    RTL Description				       *--
--**************************************************************************************--

ARCHITECTURE RTL OF COMP_30_tb IS

    -- implementation des composantes.
COMPONENT COMP_30 IS PORT(
    rst   : IN STD_LOGIC;
    clk   : IN STD_LOGIC;
    i_f   : IN STD_LOGIC;
    cmp30 : OUT STD_LOGIC
);
END COMPONENT;


    -- les signaux d'entre et de sortie 
SIGNAL r_s   : STD_LOGIC;
SIGNAL c_s   : STD_LOGIC;
SIGNAL i_s   : STD_LOGIC;
SIGNAL c30_s : STD_LOGIC;

BEGIN

    -- mapping
c30 : COMP_30 PORT MAP (
    rst   => r_s,
    clk   => c_s,
    i_f   => i_s,
    cmp30 => c30_s
);

    -- processus de test
rst0 : PROCESS 
BEGIN 
    r_s <= '0';
    WAIT FOR 50 NS;
    r_s <= '1';
    WAIT FOR 5000 NS;
END PROCESS;

clk0 : PROCESS 
BEGIN
    c_s <= '0';
    WAIT FOR 20 NS;
    c_s <= '1';
    WAIT FOR 20 NS;
END PROCESS;

imp0 : PROCESS 
BEGIN
    i_s <= '0';
    WAIT FOR 63 NS;
    i_s <= '1';
    WAIT FOR 63 NS;
END PROCESS;
     
 END RTL;