library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DECLARATION D'UNE ENTITE
entity tb_flipflop_JK is
	port (
		j, k, clk : in std_logic;
		q, qn : out std_logic
	);
end tb_flipflop_JK;

architecture tb of tb_flipflop_JK is
    -- Déclaration des signaux de test
	-- ex. signal A, S: std_logic;

begin
    -- Instanciation de l'entité testée, récupérée dans la librairie work
    -- On appelle cette instance UUT (Unit Under Test)
	UUT : entity work.flipflop_JK port map (
        j => j,
		  k => k,
		  clk => clk,
		  q => q,
		  qn => qn
	);

	clock : process
	begin
		wait for 5 ns;
		clk <= not(clk);
	end process;
	
	ValJ : process
	begin
		wait for 5 ns;
		j <= not(j);
	end process;
	
	ValK : process
	begin
		wait for 10 ns;
		k <= not(k);
	end process;
	
	
end tb ;
