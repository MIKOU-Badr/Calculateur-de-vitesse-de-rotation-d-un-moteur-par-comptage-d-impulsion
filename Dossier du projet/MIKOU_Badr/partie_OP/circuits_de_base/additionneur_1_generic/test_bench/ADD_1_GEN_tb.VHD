--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: aditionneur de 1
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
	-- Block 	: circuit de base
--**************************************************************************************--
	-- File  	: ADD_1_GEN_tb.VHD
	-- Authors 	: MIKOU Badr
	-- Created 	: 04/09/2020
--**************************************************************************************--
	-- Description	:
	-- ik ajoute 1 a chaque entrée.

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
ENTITY ADD_1_GEN_tb IS
END ADD_1_GEN_tb;
--**************************************************************************************--
--*				    RTL Description				       *--
--**************************************************************************************--
ARCHITECTURE RTL OF ADD_1_GEN_tb IS

    -- la valeur generique
CONSTANT n : INTEGER := 5;

    -- implementation de la composante a tester.
COMPONENT ADD_1_GEN IS GENERIC ( 
    n : INTEGER 
);
PORT (
    a : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
);
END COMPONENT;
    
SIGNAL a_s : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
SIGNAL s_s : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    
BEGIN

    -- le mapping
ad1 : ADD_1_GEN GENERIC MAP (
	n => n
)    
PORT MAP (
    a => a_s,
    s => s_s);

    -- les valeurs d'entré
ab1 : PROCESS
    BEGIN
        a_s <= "00000";
        WAIT FOR 200 NS;
        a_s <= "00001";
        WAIT FOR 200 NS;
END PROCESS;  
 END RTL;