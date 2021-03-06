--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: registre flip flop
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
	-- Block 	: circuit de base
--**************************************************************************************--
	-- File  	: REG_FLIP_FLOP_GEN_tb.VHD
	-- Authors 	: MIKOU Badr
	-- Created 	: 04/09/2020
--**************************************************************************************--
	-- Description	:
    -- quand rst est a zero la sortie s <= 0.
    -- quand rst est a 1 si clk = 0 alors s <= 0 sinon s <= d 
	 
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

ENTITY REG_FLIP_FLOP_GEN_tb IS 
END REG_FLIP_FLOP_GEN_tb;

--**************************************************************************************--
--*				    RTL Description				       *--
--**************************************************************************************--

ARCHITECTURE RTL OF REG_FLIP_FLOP_GEN_tb IS
       -- la valeur generique
CONSTANT n : INTEGER := 5;

       -- implementation de la composante a tester.
COMPONENT REG_FLIP_FLOP_GEN IS GENERIC (
n : INTEGER
);
PORT (
    	rst : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	d   : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    	s   : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
    );
END COMPONENT;

    -- les signaux d'entre et de sortie 
SIGNAL rst_s : STD_LOGIC;
SIGNAL clk_s : STD_LOGIC;
SIGNAL d_s   : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
SIGNAL s_s   : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    
BEGIN

    -- le mapping       
rff0 : REG_FLIP_FLOP_GEN GENERIC MAP (
n => n
)
PORT MAP (
    rst => rst_s,
    clk => clk_s,
    d   => d_s,
    s   => s_s
);

    -- les valeurs d'entr�
donnee : PROCESS
BEGIN
        d_s <= (OTHERS => '0');
        WAIT FOR 15 NS;
        d_s <= (OTHERS => '1');
        WAIT FOR 15 NS;
END PROCESS;
 
        
    -- le processus de teste
rst0 : PROCESS
    BEGIN
        rst_s <= '0';
        WAIT FOR 15 NS;
        rst_s <= '1';
        WAIT FOR 50 NS;
END PROCESS;

clk0 : PROCESS 
BEGIN
    clk_s <= '0';
    WAIT FOR 10 NS;
    clk_s <= '1';
    WAIT FOR 10 NS;
end process;

 END RTL;