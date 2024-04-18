library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DESCRIPTION DES ENTREES/SORTIES DE L'ENTITY
entity half_adder is
	port (
		A : in std_logic;
		B : in std_logic;
		S : out std_logic;
		C : out std_logic
	);
end half_adder;

-- DESCRIPTION COMPORTEMENTALE DE L'ENTITY
-- DEMI ADDITIONNEUR
architecture behavioral of half_adder is
begin
	-- Calcule du demi additionneur
	S <= A xor B;
	C <= A and B;
end behavioral;
