--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: multiplexeur 2 vers 1
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
	-- Block 	: circuit de base
--**************************************************************************************--
	-- File  	: MUX_6_1_tb.VHD
	-- Authors 	: MIKOU Badr
	-- Created 	: 08/09/2020
--**************************************************************************************--
	-- Description	:
	-- on va tester sur la sel pour voir si y est egale a in0 ou in1
	 
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

ENTITY MUX_6_1_tb IS 
END MUX_6_1_tb;

--**************************************************************************************--
--*				    RTL Description				       *--
--**************************************************************************************--

ARCHITECTURE RTL OF MUX_6_1_tb IS

    -- implementation de la composante a tester.
COMPONENT MUX_6_1 IS PORT (
	in0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	in1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	in2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	in3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	in4 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	in5 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	y   : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END COMPONENT;

    -- les signaux d'entre et de sortie 
SIGNAL in0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL in1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL in2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL in3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL in4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL in5 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sel : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL y   : STD_LOGIC_VECTOR(3 DOWNTO 0);
    
BEGIN

    -- le maping       
m0 : MUX_6_1 GENERIC MAP (
n => n
)
PORT MAP (
    in0 => in0,
    in1 => in1,
    in2 => in2,
    in3 => in3,
    in4 => in4,
    in5 => in5,
    sel => sel,
    y   => y);

    -- les valeurs d'entré
 in0 <= "0000";
 in1 <= "0001";
 in2 <= "0011";
 in3 <= "0101";
 in4 <= "1001";
 in5 <= "1101";
        
    -- le processus de teste
PROCESS
    BEGIN
        sel <= "000";
        WAIT FOR 50 NS;
        sel <= "001";
        WAIT FOR 50 NS;
        sel <= "010";
        WAIT FOR 50 NS;
        sel <= "011";
        WAIT FOR 50 NS;
        sel <= "100";
        WAIT FOR 50 NS;
        sel <= "101";
        WAIT FOR 50 NS;
END PROCESS;

END RTL;
