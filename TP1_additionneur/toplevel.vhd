library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DESCRIPTION DES ENTREES/SORTIES DE L'ENTITY
entity toplevel is
	port (
		LEDR : out std_logic_vector(9 downto 0);
		LEDG : out std_logic_vector(7 downto 0);
		SW : in std_logic_vector(9 downto 0);
		HEX0 : out std_logic_vector(6 downto 0);
		HEX2 : out std_logic_vector(6 downto 0);
		HEX3 : out std_logic_vector(6 downto 0)
	);
end toplevel;


-- DESCRIPTION COMPORTEMENTALE DE L'ENTITY
-- DEMI ADDITIONNEUR
architecture behavioral of toplevel is

SIGNAL	S :  STD_LOGIC_VECTOR(3 downto 0);

begin



	UUT : entity work.full_adder_4b port map (
		  A => SW(3 downto 0),
		  B => SW(7 downto 4),
		  Cin => SW(9),
		  S => S,
		  Cout => LEDG(7)
	);
	
	transa : entity work.transcodeur_7seg port map (
		  V => SW(3 downto 0),
		  HEX => HEX3
	);
	transb : entity work.transcodeur_7seg port map (
		  V => SW(7 downto 4),
		  HEX => HEX2
	);
	transs : entity work.transcodeur_7seg port map (
		  V => S,
		  HEX => HEX0
	);
	-- Calcule du demi additionneur
	LEDR(7 downto 0) <= SW(7 downto 0);
	LEDR(9) <= SW(9);	
	LEDG(3 downto 0) <= S;
end behavioral;
