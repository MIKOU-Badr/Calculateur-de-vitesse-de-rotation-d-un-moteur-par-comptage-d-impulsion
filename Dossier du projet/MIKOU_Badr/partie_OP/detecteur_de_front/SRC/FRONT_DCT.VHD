--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: detecteur de front (l'architecture top)
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
	-- Block 	: partie operative
--**************************************************************************************--
	-- File  	: FRONT_DCT.VHD
	-- Authors 	: MIKOU Badr
	-- Created 	: 04/09/2020
--**************************************************************************************--
	-- Description	:
    -- il detecte les impulsions emises par le moteur d'une manière syncrone avec "clk". 
	 
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

ENTITY FRONT_DCT IS PORT (
    rst : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    i   : IN STD_LOGIC;
    i_f   : OUT STD_LOGIC
);
END FRONT_DCT;

--**************************************************************************************--
--*				    RTL Description				       *--
--**************************************************************************************--

ARCHITECTURE RTL OF FRONT_DCT IS
    -- le nobre de bit dans les données
CONSTANT n : INTEGER := 1;
    -- implementation des composantes.
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

COMPONENT AND_NOT IS PORT (
    a : IN STD_LOGIC;
    b : IN STD_LOGIC;
    s : OUT STD_LOGIC
);
END COMPONENT;

    -- signaux de liaison
SIGNAL i_1 : STD_LOGIC; -- sortie de registre 1
SIGNAL i_2 : STD_LOGIC; -- sortie de registre 2

BEGIN

    -- tout s'execute dans le mapping
    -- mapping
rff1 : REG_FLIP_FLOP_GEN GENERIC MAP (
    n => n
)
 PORT MAP (
    rst => rst,
    clk => clk,
    d(0)   => i,
    s(0)  => i_1 
);

rff2 : REG_FLIP_FLOP_GEN GENERIC MAP (
    n => n
)
 PORT MAP (
    rst => rst,
    clk => clk,
    d(0)   => i_1,
    s(0)  => i_2 
); 

 addnot1 : AND_NOT PORT MAP (
     a => i_1,
     b => i_2,
     s => i_f
 );

 END RTL;