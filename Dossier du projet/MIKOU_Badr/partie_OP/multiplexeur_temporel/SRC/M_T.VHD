--**************************************************************************************--
--					ENSA FES					--
--		             	     Filiere :GSEII					--
--**************************************************************************************--
	-- Title	: multiplexeur temporel
	-- Project    	: "calculateur de vitesse de rotation d'un moteur"
    -- Block 	: partie operative
--**************************************************************************************--
	-- File  	: M_T.VHD
	-- Authors 	: MIKOU Badr
	-- Created 	: 08/09/2020
--**************************************************************************************--
	-- Description	:
	--  a chaque cycle d'horloge il envoie un dans la sortie une des entrees
	 
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

ENTITY M_T IS PORT (
    rst : IN STD_LOGIC;
    clk : IN STD_LOGIC;
        -- les donnees d'entree        
    in0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	in1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	in2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	in3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	in4 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    in5 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    
        -- la sortie
    af  : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    s   : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
);
END M_T;

--**************************************************************************************--
--*				    RTL Description				       *--
--**************************************************************************************--

ARCHITECTURE RTL OF M_T IS 

   -- la canstante generique 
CONSTANT n : INTEGER := 3;

    -- Implementation des composantes
COMPONENT MUX_6_1 IS PORT (
	in0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	in1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	in2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	in3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	in4 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	in5 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    y   : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END COMPONENT;

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

COMPONENT CMP IS PORT (
	in0 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	in1 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    y   : OUT STD_LOGIC);
END COMPONENT;

COMPONENt ADD_1_GEN IS GENERIC ( 
	n : INTEGER
);
PORT (
    a : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	s : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
);
END COMPONENT;

    -- les signaux internes
SIGNAL cmpt : STD_LOGIC_VECTOR(n-1 DOWNTO 0); -- represente le sel du multiplexeur (mux6_1) -- la sortie du registre (rff1)
SIGNAL sig1 : STD_LOGIC_VECTOR(n-1 DOWNTO 0); -- la sortie de multiplexeur (mux2_1) 
SIGNAL sig2 : STD_LOGIC_VECTOR(n-1 DOWNTO 0); -- la sortie de multiplexeur du additioneur de 1 (add1) 

SIGNAL cmp6 : STD_LOGIC; -- la sortie du comparateur (cmp1)

SIGNAL sigcmp : STD_LOGIC_VECTOR(4 DOWNTO 0); -- pour remplir toutes les case du comparateur

SIGNAL y_s  : STD_LOGIC_VECTOR(3 DOWNTO 0); -- le signal reliaun la sortie de (mux6_1) avec (M_T)
BEGIN

    -- mapping
    -- la partie de temporisation   
add1 : ADD_1_GEN GENERIC MAP (
    n => n
)
PORT MAP (
    a => cmpt,
    s => sig1
);

mux2_1 : MUX_2_1_GEN GENERIC MAP (
    n => n
)
PORT MAP (
    in0 => sig1,
    in1 => (OTHERS => '0'),
    sel => cmp6,
    y => sig2
);

rff1 : REG_FLIP_FLOP_GEN GENERIC MAP (
    n => n
)
PORT MAP (
    rst => rst,
    clk => clk,
    d   => sig2,
    s   => cmpt 
);


cmp1 : CMP PORT MAP (
    in0 => sigcmp, -- apres cmpt sera remis a zero
    in1 => "00101", -- equivalent a 5
    y => cmp6
);

sigcmp(4 DOWNTO 3) <= "00"; -- replire les case vide
sigcmp(2 DOWNTO 0) <= cmpt; -- la valeur a tester

    -- la partie de multiplexage temporel
mux6_1 : MUX_6_1 PORT MAP (
    in0 => in0,
    in1 => in1,
    in2 => in2,
    in3 => in3,
    in4 => in4,
    in5 => in5,
    sel => cmpt,
    y   => y_s
);

    -- lieson entre la sortie avec le signal de sortie
s <= y_s;
af <= cmpt;

END RTL;