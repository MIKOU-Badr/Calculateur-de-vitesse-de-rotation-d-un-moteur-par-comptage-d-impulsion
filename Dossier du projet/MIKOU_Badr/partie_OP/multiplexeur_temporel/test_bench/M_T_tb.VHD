--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: multiplexeur temporel
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
    -- Block 	: partie operative
--**************************************************************************************--
	-- File  	: M_T_tb.VHD
	-- Authors 	: MIKOU Badr
	-- Created 	: 08/09/2020
--**************************************************************************************--
	-- Description	:
	--  a chaque cycle d'horloge il envoie un dans la sortie une des entrees
	 
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

ENTITY M_T_tb IS 
END M_T_tb;

--**************************************************************************************--
--*				    RTL Description				       *--
--**************************************************************************************--

ARCHITECTURE RTL OF M_T_tb IS 

    -- Implementation des composantes
COMPONENT M_T IS PORT (
    rst : IN STD_LOGIC;
    clk : IN STD_LOGIC;
        -- les donnees d'entree        
    in0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	in1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	in2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	in3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	in4 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    in5 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    
        -- la sortie
    af  : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    s   : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
);
END COMPONENT;

    -- les signaux d'entr�es et de sorties
SIGNAL rst : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL in0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL in1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL in2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL in3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL in4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL in5 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL af  : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL s   : STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN

-- mapping

muxT_1 : M_T PORT MAP (
    rst => rst,
    clk => clk,
    in0 => in0,
    in1 => in1,
    in2 => in2,
    in3 => in3,
    in4 => in4,
    in5 => in5,
    af  => af,
    s   => s
);

-- les valeurs d'entr�
in0 <= "0000";
in1 <= "0001";
in2 <= "0011";
in3 <= "0101";
in4 <= "1001";
in5 <= "1101";

    -- le processus : 
clock : PROCESS 
BEGIN
    clk <= '0';
    WAIT FOR 50 nS;
    clk <= '1';
    WAIT FOR 50 nS;
END PROCESS;

reset : PROCESS 
BEGIN
    rst <= '0';
    WAIT FOR 300 nS;
    rst <= '1';
    WAIT FOR 1300 nS;
END PROCESS;

END RTL;