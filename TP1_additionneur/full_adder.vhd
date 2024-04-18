library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DESCRIPTION DES ENTREES/SORTIES DE L'ENTITY
entity full_adder is
	port (
		A : in std_logic;
		B : in std_logic;
		Cin : in std_logic;
		S : out std_logic;
		Cout : out std_logic
	);
end full_adder;

-- DESCRIPTION COMPORTEMENTALE DE L'ENTITY
-- DEMI ADDITIONNEUR
architecture behavioral of full_adder is
begin
	-- Calcule du demi additionneur
	S <= (not(A) and not(B) and Cin) or (not(A) and B and not(Cin)) or (A and not(B) and not(Cin)) or (A and b and Cin);
	Cout <= (A and B) or (B and Cin) or (A and Cin);
end behavioral;