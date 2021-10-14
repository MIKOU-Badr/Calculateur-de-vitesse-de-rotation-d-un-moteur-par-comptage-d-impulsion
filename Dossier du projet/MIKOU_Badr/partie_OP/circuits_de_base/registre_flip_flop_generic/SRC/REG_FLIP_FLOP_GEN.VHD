--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: registre flip flop
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
	-- Block 	: circuit de base
--**************************************************************************************--
	-- File  	: REG_FLIP_FLOP_GEN.VHD
	-- Authors 	: MIKOU Badr
	-- Created 	: 04/09/2020
--**************************************************************************************--
	-- Description	:
    -- quand rst est a zero la sortie s <= 0.
    -- quand rst est a 1 si clk = 0 alors s <= 0 sinon s <= d. 
	 
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

ENTITY REG_FLIP_FLOP_GEN IS GENERIC (
	n : INTEGER := 5
);
PORT (
	rst : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	d   : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    s   : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
);
END REG_FLIP_FLOP_GEN;

--**************************************************************************************--
--*				    RTL Description				       *--
--**************************************************************************************--

ARCHITECTURE RTL OF REG_FLIP_FLOP_GEN IS
BEGIN

PROCESS (clk,rst)
BEGIN
    IF (rst = '0') THEN
        s <= (OTHERS => '0');
    ELSIF (clk'EVENT AND clk = '1') THEN
        s <= d;
    END IF;
END PROCESS; 
    
 END RTL;
