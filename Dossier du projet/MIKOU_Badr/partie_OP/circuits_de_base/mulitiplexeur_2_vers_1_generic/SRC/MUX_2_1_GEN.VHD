--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: multiplexeur 2 vers 1
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
	-- Block 	: circuit de base
--**************************************************************************************--
	-- File  	: MUX_2_1_GEN.VHD
	-- Authors 	: MIKOU Badr
	-- Created 	: 04/09/2020
--**************************************************************************************--
	-- Description	:
	-- la sortie y prend la valeur de in1 si la l'entre de selection sel = 1.
	-- la sortie y prend la valeur de in0 si la l'entre de selection sel = 0.
	 
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

ENTITY MUX_2_1_GEN IS GENERIC (
	n : INTEGER :=5
);
PORT (
	in0 : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	in1 : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	sel : IN STD_LOGIC;
	y   : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0));
END MUX_2_1_GEN;

--**************************************************************************************--
--*				    RTL Description				       *--
--**************************************************************************************--

ARCHITECTURE RTL OF MUX_2_1_GEN IS
BEGIN

y <= in0 WHEN sel = '0' ELSE
     in1 WHEN sel = '1' ELSE
	 (OTHERS => 'X');
	
 END RTL;
