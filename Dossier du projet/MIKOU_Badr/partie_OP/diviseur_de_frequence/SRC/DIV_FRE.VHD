--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: diviseur de frequence
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
	-- Block 	: partie operative
--**************************************************************************************--
	-- File  	: DIV_FRE.VHD
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
ENTITY DIV_FRE IS PORT (
    rst  : IN STD_LOGIC;
    clk  : IN STD_LOGIC;
    cout : OUT STD_LOGIC 
);
END DIV_FRE;
--**************************************************************************************--
--*				    RTL Description				       *--
--**************************************************************************************--
ARCHITECTURE RTL OF DIV_FRE IS

    -- implementation des composante
COMPONENT D_BAS IS PORT (
    rst  : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    d   : IN STD_LOGIC;
    q   : OUT STD_LOGIC;
    q_n : OUT STD_LOGIC -- not q
);
 END COMPONENT;

    -- signaux internes
SIGNAL sig : STD_LOGIC; -- q-n

BEGIN
    -- mapping
div : D_BAS PORT MAP (
    rst => rst,
    clk => clk,
    d   => sig,
    q   => cout,
    q_n => sig 
);
    
 END RTL;