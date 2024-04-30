library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DECLARATION D'UNE ENTITE
entity tb_flipflop_JKrs is
end tb_flipflop_JKrs;

architecture tb of tb_flipflop_JKrs is
    -- Déclaration des signaux de test
	signal clk, SETn, RSTn, j, k : std_logic := '0';
	signal Q, Qn : std_logic;
begin
    -- Instanciation de l'entité testée, récupérée dans la librairie work
    -- On appelle cette instance UUT (Unit Under Test)
	UUT : entity work.flipflop_JKrs port map (
        j => j,
		  k => k,
		  clk => clk,
		  SETn => SETn,
		  RSTn => RSTn,
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
		wait for 10 ns;
		j <= not(j);
	end process;
	
	ValK : process
	begin
		wait for 20 ns;
		k <= not(k);
	end process;
	
	ValRstn : process
	begin
		wait for 84 ns;
		RSTn <= not(RSTn);
	end process;
	
	ValSetn : process
	begin
		wait for 42 ns;
		SETn <= not(SETn);
	end process;
	
end tb ;
