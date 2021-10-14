--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: partie operative (l'architecture top)
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
    	-- Block 	: partie operative
--**************************************************************************************--
	-- File  	: P_O_tb.VHD
	-- Authors 	: MIKOU Badr
	-- Created 	: 06/09/2020
--**************************************************************************************--
	-- Description	:
   	-- la paortie operative de notre circuit
	 
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

ENTITY P_O_tb IS 
END P_O_tb;

--**************************************************************************************--
--*				    RTL Description				       *--
--**************************************************************************************--

ARCHITECTURE RTL OF P_O_tb IS

    -- implementation des composantes.
COMPONENT P_O IS PORT(
    rst   : IN STD_LOGIC;
    clk   : IN STD_LOGIC;
    i_in  : IN STD_LOGIC; -- l'impultion d'etecter
    S_in  : IN STD_LOGIC; -- stop -- en prevenance de la machine d'etat (partie_CT)
    v     : OUT STD_LOGIC_VECTOR(20 DOWNTO 0);
        -- affichage 7 segment 
    seg_1 : OUT STD_LOGIC_VECTOR(1 TO 7);
    seg_2 : OUT STD_LOGIC_VECTOR(1 TO 7);
    seg_3 : OUT STD_LOGIC_VECTOR(1 TO 7);
    seg_4 : OUT STD_LOGIC_VECTOR(1 TO 7);
    seg_5 : OUT STD_LOGIC_VECTOR(1 TO 7);
    seg_6 : OUT STD_LOGIC_VECTOR(1 TO 7)
);
END COMPONENT;

    -- les signaux d'entre et de sortie 
SIGNAL r_s   : STD_LOGIC;
SIGNAL c_s   : STD_LOGIC;
SIGNAL i_s   : STD_LOGIC; -- l'impultion d'etecter
SIGNAL s_s   : STD_LOGIC; -- stop -- en prevenance de la machine d'etat (partie_CT)
SIGNAL v_s   : STD_LOGIC_VECTOR(20 DOWNTO 0);
SIGNAL seg_1s : STD_LOGIC_VECTOR(1 TO 7);
SIGNAL seg_2s : STD_LOGIC_VECTOR(1 TO 7);
SIGNAL seg_3s : STD_LOGIC_VECTOR(1 TO 7);
SIGNAL seg_4s : STD_LOGIC_VECTOR(1 TO 7);
SIGNAL seg_5s : STD_LOGIC_VECTOR(1 TO 7);
SIGNAL seg_6s : STD_LOGIC_VECTOR(1 TO 7);
    
BEGIN

    -- mapping
po1 : P_O PORT MAP(
    rst   => r_s,
    clk   => c_s,
    i_in  => i_s,
    s_in  => s_s,
    v     => v_s,
    seg_1 => seg_1s,
    seg_2 => seg_2s,
    seg_3 => seg_3s,
    seg_4 => seg_4s,
    seg_5 => seg_5s,
    seg_6 => seg_6s
);

    -- la valeur d'entré
    -- le processus de simulation
r1 : PROCESS 
BEGIN
    r_s <= '0';
    WAIT FOR 50 NS;
    r_s <= '1';
    WAIT FOR 5000 NS;
END PROCESS;

c1 : PROCESS 
BEGIN
    c_s <= '0';
    WAIT FOR 10 NS;
    c_s <= '1';
    WAIT FOR 10 NS;
END PROCESS;

i1 : PROCESS 
BEGIN
    i_s <= '0';
    WAIT FOR 50 NS;
    i_s <= '1';
    WAIT FOR 50 NS;
END PROCESS;

s1 : PROCESS 
BEGIN
    s_s <= '0';
    WAIT FOR 3760 NS;
    s_s <= '1';
    WAIT FOR 600 NS;
END PROCESS;

 END RTL;