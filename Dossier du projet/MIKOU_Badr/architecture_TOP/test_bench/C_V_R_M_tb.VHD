--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: calculateur de vitesse de rotation d'un moteur
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
    	-- Block 	: calculateur de vitesse de rotation d'un moteur
--**************************************************************************************--
	-- File  	: C_V_R_M_tb.VHD
	-- Authors 	: MIKOU Badr
	-- Created 	: 06/09/2020
--**************************************************************************************--
	-- Description	:
       -- il calcule la vitesse de rotation du moteur en calculant le nombre de cycle
       -- d'horloge dans un tour.
       -- il est composé d'une partie opérative est une partie de control
       -- la partie operative c'est la partie qui fait les calcules
       -- la partie de controle facilite la lecture de vitesse 
	 
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

ENTITY C_V_R_M_tb IS 
END C_V_R_M_tb;

--**************************************************************************************--
--*				    RTL Description				       *--
--**************************************************************************************--

ARCHITECTURE RTL OF C_V_R_M_tb IS

    -- implementation de la composante a tester
component C_V_R_M IS PORT(

    -- entrées
clk   : in std_logic;
rst   : in std_logic;
rq    : in std_logic;
i_in  : IN STD_LOGIC;

    -- les sorties
v     : OUT STD_LOGIC_VECTOR(20 DOWNTO 0);
ack   : out std_logic; -- acknoledge

    -- affichage 7 segment 
seg_1 : OUT STD_LOGIC_VECTOR(1 TO 7);
seg_2 : OUT STD_LOGIC_VECTOR(1 TO 7);
seg_3 : OUT STD_LOGIC_VECTOR(1 TO 7);
seg_4 : OUT STD_LOGIC_VECTOR(1 TO 7);
seg_5 : OUT STD_LOGIC_VECTOR(1 TO 7);
seg_6 : OUT STD_LOGIC_VECTOR(1 TO 7)
);
end component;

    -- signaux d'entrées et de sorties
SIGNAL r_s    : STD_LOGIC;
SIGNAL c_s    : STD_LOGIC;
SIGNAL i_s    : STD_LOGIC; -- l'impultion d'etecter
SIGNAL r_qs   : STD_LOGIC;
SIGNAL a_s    : STD_LOGIC;
SIGNAL v_s    : STD_LOGIC_VECTOR(20 DOWNTO 0);
SIGNAL seg_1s : STD_LOGIC_VECTOR(1 TO 7);
SIGNAL seg_2s : STD_LOGIC_VECTOR(1 TO 7);
SIGNAL seg_3s : STD_LOGIC_VECTOR(1 TO 7);
SIGNAL seg_4s : STD_LOGIC_VECTOR(1 TO 7);
SIGNAL seg_5s : STD_LOGIC_VECTOR(1 TO 7);
SIGNAL seg_6s : STD_LOGIC_VECTOR(1 TO 7);

BEGIN 

    -- MAPING
CVRM1 : C_V_R_M PORT MAP (
    rst   => r_s,
    clk   => c_s,
    i_in  => i_s,
    rq    => r_qs,
    v     => v_s,
    ack   => a_s,
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
    WAIT FOR 63 NS;
    i_s <= '1';
    WAIT FOR 63 NS;
END PROCESS;

rq1 : PROCESS 
BEGIN
    r_qs <= '0';
    WAIT FOR 3500 NS;
r_qs <= '1';
    WAIT FOR 300 NS;
 
END PROCESS;

END RTL;