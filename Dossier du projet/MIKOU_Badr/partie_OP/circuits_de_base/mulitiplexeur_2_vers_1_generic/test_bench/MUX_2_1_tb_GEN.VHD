--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: multiplexeur 2 vers 1
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
	-- Block 	: circuit de base
--**************************************************************************************--
	-- File  	: MUX_2_1_GEN_tb.VHD
	-- Authors 	: MIKOU Badr
	-- Created 	: 04/09/2020
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

ENTITY MUX_2_1_GEN_tb IS 
END MUX_2_1_GEN_tb;

--**************************************************************************************--
--*				    RTL Description				       *--
--**************************************************************************************--

ARCHITECTURE RTL OF MUX_2_1_GEN_tb IS

    -- la valeur generique
CONSTANT n : INTEGER := 5;

    -- implementation de la composante a tester.
COMPONENT MUX_2_1_GEN IS GENERIC (
	n : INTEGER
);
PORT (
	in0 : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	in1 : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	sel : IN STD_LOGIC;
	y   : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0));
END COMPONENT;

    -- les signaux d'entre et de sortie 
SIGNAL a     : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
SIGNAL b     : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
SIGNAL sel_s : STD_LOGIC;
SIGNAL s     : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    
BEGIN

    -- le maping       
m0 : MUX_2_1_GEN GENERIC MAP (
n => n
)
PORT MAP (
    in0 => a,
    in1 => b,
    sel => sel_s,
    y   => s);

    -- les valeurs d'entré
 a <= "10000";
 b <= "00001";
        
    -- le processus de teste
PROCESS
    BEGIN
        sel_s <= '0';
        WAIT FOR 50 NS;
        sel_s <= '1';
        WAIT FOR 50 NS;
END PROCESS;

END RTL;
