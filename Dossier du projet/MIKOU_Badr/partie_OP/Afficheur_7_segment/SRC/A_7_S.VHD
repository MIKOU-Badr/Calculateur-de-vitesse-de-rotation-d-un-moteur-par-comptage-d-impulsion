--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: afficheur 7 segment
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
    -- Block 	: partie operative
--**************************************************************************************--
	-- File  	: A_7_S.VHD
	-- Authors 	: MIKOU Badr
	-- Created 	: 08/09/2020
--**************************************************************************************--
	-- Description	:
    --  il permet dafficher les donne choisi par le multiplexeur temporel
    -- dans un afficheur 7 segment
	 
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
ENTITY A_7_S IS PORT (
	af      : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	data_in : IN STD_LOGIC_VECTOR(1 TO 7);
	dout_0  : OUT STD_LOGIC_VECTOR(1 TO 7);
    dout_1  : OUT STD_LOGIC_VECTOR(1 TO 7);
    dout_2  : OUT STD_LOGIC_VECTOR(1 TO 7);
    dout_3  : OUT STD_LOGIC_VECTOR(1 TO 7);
    dout_4  : OUT STD_LOGIC_VECTOR(1 TO 7);
    dout_5  : OUT STD_LOGIC_VECTOR(1 TO 7));
END A_7_S;

--**************************************************************************************--
--*				   ENTITY Declaration				       *--
--**************************************************************************************--

ARCHITECTURE RTL OF A_7_S IS
BEGIN

    -- le processus de fonct
 PROCESS (af)
BEGIN
    IF (af = "000") THEN
        dout_0 <= data_in;
    ELSIF (af = "001") THEN
        dout_1 <= data_in;
    ELSIF (af = "010") THEN
        dout_2 <= data_in;
    ELSIF (af = "011") THEN
        dout_3 <= data_in;
     ELSIF (af = "100") THEN
        dout_4 <= data_in;
    ELSIF (af = "101") THEN
        dout_5 <= data_in;
    END IF;
END PROCESS;
 END RTL;