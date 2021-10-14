--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: compteur de vitesse de rotation : sauvgarde et fixation
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
    	-- Block 	: partie operative
--**************************************************************************************--
	-- File  	: COMP_V_S_F.VHD
	-- Authors 	: MIKOU Badr
	-- Created 	: 06/09/2020
--**************************************************************************************--
	-- Description	:
   	-- il compte combien de cycle d'horloge le moteur a besoin pour faire 1 tour
    	-- de la sauvgarder puit de la fixer a fin de pouvoir la lire
	 
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

ENTITY COMP_V_S_F IS PORT(
    rst   : IN STD_LOGIC;
    clk   : IN STD_LOGIC;
    S_in  : IN STD_LOGIC; -- stop -- en prevenance de la machine d'etat (partie_CT)
    cmp30 : IN STD_LOGIC;
    v     : OUT STD_LOGIC_VECTOR(20 DOWNTO 0)
);
END COMP_V_S_F;

--**************************************************************************************--
--*				    RTL Description				       *--
--**************************************************************************************--

ARCHITECTURE RTL OF COMP_V_S_F IS

    -- le nombre de bite d"entree et de sortie
CONSTANT   n  : INTEGER := 21;
    -- implementation des composantes.
COMPONENT MUX_2_1_GEN IS GENERIC (
	n : INTEGER 
);
PORT (
	in0 : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	in1 : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	sel : IN STD_LOGIC;
	y   : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0));
END COMPONENT;

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

COMPONENt ADD_1_GEN IS GENERIC ( 
	n : INTEGER
);
PORT (
    a : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	s : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
);
END COMPONENT;

    -- les signaux d'entre et de sortie 
SIGNAL v_temp : STD_LOGIC_VECTOR(n-1 DOWNTO 0); -- sortie de registre 1 (rff1) -- il represente la vitesse calculee et fixee
SIGNAL sig1   : STD_LOGIC_VECTOR(n-1 DOWNTO 0); -- la sortie de add_1
SIGNAL sig2   : STD_LOGIC_VECTOR(n-1 DOWNTO 0); -- la sortie du  multiplexeur (mux1)
SIGNAL v_int  : STD_LOGIC_VECTOR(n-1 DOWNTO 0); -- sortie de registre 1 (rff2) -- il represente la vitesse sauvgardee
SIGNAL sig3   : STD_LOGIC_VECTOR(n-1 DOWNTO 0); -- la sortie du  multiplexeur (mux2)
SIGNAL v_st   : STD_LOGIC_VECTOR(n-1 DOWNTO 0); -- sortie de registre 1 (rff3) -- il represente la vitesse fixee
SIGNAL sig4   : STD_LOGIC_VECTOR(n-1 DOWNTO 0); -- la sortie du  multiplexeur (mux3)


BEGIN

    -- mapping
    -- calcule de vitess
add1 : ADD_1_GEN GENERIC MAP (
    n => n
)
PORT MAP (
    a => v_temp,
    s => sig1
);

mux1 : MUX_2_1_GEN GENERIC MAP (
    n => n
)
PORT MAP (
    in0 => sig1,
    in1 => (OTHERS => '0'),
    sel => cmp30,
    y   => sig2
);

rff1 : REG_FLIP_FLOP_GEN GENERIC MAP (
    n => n
)
PORT MAP (
    rst => rst,
    clk => clk,
    d   => sig2,
    s   => v_temp 
);

    -- le sauvegarde de la vitess
mux2 : MUX_2_1_GEN GENERIC MAP (
    n => n
)
PORT MAP (
    in0 => v_int,
    in1 => v_temp,
    sel => cmp30,
    y   => sig3
);

rff2 : REG_FLIP_FLOP_GEN GENERIC MAP (
    n => n
)
PORT MAP (
    rst => rst,
    clk => clk,
    d   => sig3,
    s   => v_int 
);

    -- fixation de la sortie
mux3 : MUX_2_1_GEN GENERIC MAP (
    n => n
 )
PORT MAP (
    in0 => v_int,
    in1 => v_st,
    sel => s_in,
    y   => sig4
);

rff3 : REG_FLIP_FLOP_GEN GENERIC MAP (
    n => n
)
PORT MAP (
    rst => rst,
    clk => clk,
    d   => sig4,
    s   => v_st 
);
    -- la valeur de sortie     
v <= v_st;

 END RTL;