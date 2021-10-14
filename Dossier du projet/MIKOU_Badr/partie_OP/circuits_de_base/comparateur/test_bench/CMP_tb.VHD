--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: comparateur
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
    -- Block 	: circuit de base
--**************************************************************************************--
	-- File  	: CMP_tb.VHD
	-- Authors 	: MIKOU Badr
	-- Created 	: 04/09/2020
--**************************************************************************************--
	-- Description	:
	-- la sortie y prend 1 si in0 = in1.
	-- 
	 
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

ENTITY CMP_tb IS 
END CMP_tb;

--**************************************************************************************--
--*				    RTL Description				       *--
--**************************************************************************************--

ARCHITECTURE RTL OF CMP_tb IS

    -- implementation de la composante a tester.
COMPONENT CMP IS PORT (
	in0 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	in1 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    y   : OUT STD_LOGIC);
    
    -- les signaux d'entre et de sortie 
END COMPONENT;
SIGNAL a     : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL b     : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL s : STD_LOGIC;
BEGIN

    -- le maping

cmp0 : CMP PORT MAP (
    in0 => a,
    in1 => b,
    y   => s
);

    -- les valeurs d'entré
    -- le processus de teste
a <= "10000";

donnee_b : PROCESS 
BEGIN
    b <= "10000";
    WAIT FOR 50 NS;
    b <= "00001";
    WAIT FOR 50 nS;
END PROCESS;
     
 END RTL;