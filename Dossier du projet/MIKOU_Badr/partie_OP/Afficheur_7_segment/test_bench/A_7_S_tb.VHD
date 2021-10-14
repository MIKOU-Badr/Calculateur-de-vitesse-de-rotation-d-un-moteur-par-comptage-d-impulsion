--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: afficheur 7 segment
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
    -- Block 	: partie operative
--**************************************************************************************--
	-- File  	: A_7_S_tb.VHD
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

ENTITY A_7_S_tb IS 
END A_7_S_tb;

--**************************************************************************************--
--*				   ENTITY Declaration				       *--
--**************************************************************************************--

ARCHITECTURE RTL OF A_7_S_tb IS

    -- implementation des composantes
COMPONENT A_7_S IS PORT (
	af      : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	data_in : IN STD_LOGIC_VECTOR(1 TO 7);
	dout_0  : OUT STD_LOGIC_VECTOR(1 TO 7);
    dout_1  : OUT STD_LOGIC_VECTOR(1 TO 7);
    dout_2  : OUT STD_LOGIC_VECTOR(1 TO 7);
    dout_3  : OUT STD_LOGIC_VECTOR(1 TO 7);
    dout_4  : OUT STD_LOGIC_VECTOR(1 TO 7);
    dout_5  : OUT STD_LOGIC_VECTOR(1 TO 7));
END COMPONENT;

-- les sgnaux d'entrées et de sorties
SIGNAL af      : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL data_in : STD_LOGIC_VECTOR(1 TO 7);
SIGNAL dout_0  : STD_LOGIC_VECTOR(1 TO 7);
SIGNAL dout_1  : STD_LOGIC_VECTOR(1 TO 7);
SIGNAL dout_2  : STD_LOGIC_VECTOR(1 TO 7);
SIGNAL dout_3  : STD_LOGIC_VECTOR(1 TO 7);
SIGNAL dout_4  : STD_LOGIC_VECTOR(1 TO 7);
SIGNAL dout_5  : STD_LOGIC_VECTOR(1 TO 7);

BEGIN

    -- mapping
A7S1 : A_7_S PORT MAP (
    af      => af,
    data_in => data_in,
    dout_0  => dout_0,
    dout_1  => dout_1,
    dout_2  => dout_2,
    dout_3  => dout_3,
    dout_4  => dout_4,
    dout_5  => dout_5
);

    -- les données d'entrées
PROCESS
BEGIN
    data_in <= "0110000";
    WAIT FOR 600 NS;
    data_in <= "0110110";
    WAIT FOR 600 NS;
END PROCESS;

-- le processus de test
PROCESS
BEGIN
    af <= "000";
    WAIT FOR 100 NS;
    af <= "001";
    WAIT FOR 100 NS;
    af <= "010";
    WAIT FOR 100 NS;
    af <= "011";
    WAIT FOR 100 NS;
    af <= "100";
    WAIT FOR 100 NS;
    af <= "101";
    WAIT FOR 100 NS;
END PROCESS;

END RTL;