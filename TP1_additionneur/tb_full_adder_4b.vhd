library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;

-- DECLARATION D'UNE ENTITE
entity tb_full_adder_4b is
end tb_full_adder_4b;

architecture tb of tb_full_adder_4b is
    -- Déclaration des signaux de test
	signal A, B : std_logic_vector(3 DOWNTO 0) := "0000";
	signal S : std_logic_vector(3 DOWNTO 0);
	signal Cin : std_logic := '0';
	signal Cout : std_logic;

begin
    -- Instanciation de l'entité testée, récupérée dans la librairie work
    -- On appelle cette instance UUT (Unit Under Test)
	UUT : entity work.full_adder_4b port map (
		  A => A,
		  B => B,
		  Cin => Cin,
		  S => S,
		  Cout => Cout
	);
	
	-- Description des stimuli
	-- A placer dans des *process*, car ce sont des instructions séquentielles
	-- (Plusieurs process concurrents peuvent être décrits)
	
	proc_clock_Cin : process
	begin
		wait for 5 ns;
		Cin <= not(Cin);
	end process;
	
	proc_clock_A : process
	begin
		wait for 10 ns;
		A <= A + "1";
	end process;
	
	proc_clock_B : process
	begin
		wait for 160 ns;
		B <= B + "1";
	end process;
end tb ;
