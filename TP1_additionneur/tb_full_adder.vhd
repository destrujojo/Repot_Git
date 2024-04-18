library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DECLARATION D'UNE ENTITE
entity tb_full_adder is
end tb_full_adder;

architecture tb of tb_full_adder is
    -- Déclaration des signaux de test
	signal A, B, Cin, S, Cout : std_logic;

begin
    -- Instanciation de l'entité testée, récupérée dans la librairie work
    -- On appelle cette instance UUT (Unit Under Test)
	UUT : entity work.full_adder port map (
		  A => A,
		  B => B,
		  Cin => Cin,
		  S => S,
		  Cout => Cout
	);

	-- Description des stimuli
	-- A placer dans des *process*, car ce sont des instructions séquentielles
	-- (Plusieurs process concurrents peuvent être décrits)
	stimuli1 : process
		begin
		Cin <= '0';
		A <= '0';
		B <= '0';
		wait for 50 ns;
		Cin <= '0';
		A <= '0';
		B <= '1';
		wait for 50 ns;
		Cin <= '0';
		A <= '1';
		B <= '0';
		wait for 50 ns;
		Cin <= '0';
		A <= '1';
		B <= '1';
		wait for 50 ns;
		Cin <= '1';
		A <= '0';
		B <= '0';
		wait for 50 ns;
		Cin <= '1';
		A <= '0';
		B <= '1';
		wait for 50 ns;
		Cin <= '1';
		A <= '1';
		B <= '0';
		wait for 50 ns;
		Cin <= '1';
		A <= '1';
		B <= '1';
		wait; -- Wait indefinitely

	end process;
end tb ;
