--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: bascule D
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
	-- Block 	: circuit de base
--**************************************************************************************--
	-- File  	: D_BAS_tb.VHD
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
ENTITY D_BAS_tb IS 
END D_BAS_tb;
--**************************************************************************************--
--*				    RTL Description				       *--
--**************************************************************************************--
ARCHITECTURE RTL OF D_BAS_tb IS

-- implementation de la composante a tester.
COMPONENT D_BAS IS PORT (
    rst : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    d   : IN STD_LOGIC;
    q   : OUT STD_LOGIC;
    q_n : OUT STD_LOGIC -- not q
);
END COMPONENT;

    -- les signaux d'entées et de sorties
SIGNAL r_s  : STD_LOGIC;
SIGNAL c_s  : STD_LOGIC;
SIGNAL d_s  : STD_LOGIC;
SIGNAL q_s  : STD_LOGIC;
SIGNAL q_ns : STD_LOGIC;
BEGIN

    -- maping
D_b : D_BAS PORT MAP (
    rst => r_s,
    clk => c_s,
    d   => d_s,
    q   => q_s,
    q_n => q_ns
);

    -- les bvaleurs d'entrée
d_e : PROCESS 
BEGIN
    d_s <= '0';
    WAIT FOR 50 NS;
    d_s <= '1';
    WAIT FOR 50 NS;
    END PROCESS;
    
    -- le processus de fonctionement 
clk_e : PROCESS 
BEGIN
    c_s <= '0';
    WAIT FOR 20 NS;
    c_s <= '1';
    WAIT FOR 20 NS;
END PROCESS;

rst_e : PROCESS 
BEGIN
    r_s <= '0';
    WAIT FOR 40 NS;
    r_s <= '1';
    WAIT FOR 100 NS;
END PROCESS;

 END RTL;