--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: diviseur de frequence
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
	-- Block 	: partie operative
--**************************************************************************************--
	-- File  	: DIV_FRE_tb.VHD
	-- Authors 	: MIKOU Badr
	-- Created 	: 05/09/2020
--**************************************************************************************--
	-- Description	:
	-- ik ajoute 1 a chaque entrï¿½e.

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
ENTITY DIV_FRE_tb IS
eND DIV_FRE_tb;
--**************************************************************************************--
--*				    RTL Description				       *--
--**************************************************************************************--
ARCHITECTURE RTL OF DIV_FRE_tb IS

    -- implementation des composante
COMPONENT DIV_FRE IS PORT (
    rst  : IN STD_LOGIC;
    clk  : IN STD_LOGIC;
    cout : OUT STD_LOGIC 
);
 END COMPONENT;

    -- signaux d'entr�es et de sorties 
SIGNAL r_s  : STD_LOGIC;
SIGNAL c_s  : STD_LOGIC;
SIGNAL c_ns : STD_LOGIC; 

BEGIN
    -- mapping
div : DIV_FRE PORT MAP (
    rst  => r_s,
    clk  => c_s,
    cout => c_ns
);

-- processus
clock : PROCESS 
BEGIN
    c_s <= '0';
    WAIT FOR 20 nS;
    c_s <= '1';
    WAIT FOR 20 nS;
END PROCESS;

reset : PROCESS 
BEGIN
    r_s <= '0';
    WAIT FOR 50 nS;
    r_s <= '1';
    WAIT FOR 300 nS;
END PROCESS;

 END RTL;