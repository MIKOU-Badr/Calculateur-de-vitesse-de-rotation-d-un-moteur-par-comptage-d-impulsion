--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: multiplexeur 6 vers 1
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
	-- Block 	: circuit de base
--**************************************************************************************--
	-- File  	: MUX_6_1.VHD
	-- Authors 	: MIKOU Badr
	-- Created 	: 08/09/2020
--**************************************************************************************--
	-- Description	:
	-- la sortie y prend la valeur de l'une des entr�es ce selon sel
	 
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

ENTITY MUX_6_1 IS PORT (
	in0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	in1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	in2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	in3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	in4 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	in5 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	y   : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END MUX_6_1;

--**************************************************************************************--
--*				    RTL Description				       *--
--**************************************************************************************--

ARCHITECTURE RTL OF MUX_6_1 IS
BEGIN

y <= in0 WHEN sel = "000" ELSE
	 in1 WHEN sel = "001" ELSE
	 in2 WHEN sel = "010" ELSE
	 in3 WHEN sel = "011" ELSE
	 in4 WHEN sel = "100" ELSE
	 in5 WHEN sel = "101" ELSE
	 (OTHERS => 'X');
	
 END RTL;
