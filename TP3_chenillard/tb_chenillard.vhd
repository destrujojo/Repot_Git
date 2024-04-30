library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DECLARATION D'UNE ENTITE
entity tb_chenillard is
end tb_chenillard;

architecture tb of tb_chenillard is
    -- Déclaration des signaux de test
	signal CLK : std_logic := '0';
	signal RST : std_logic;
	signal CHEN : std_logic_vector(9 downto 0);
begin
    -- Instanciation de l'entité testée, récupérée dans la librairie work
    -- On appelle cette instance UUT (Unit Under Test)
	UUT : entity work.chenillard port map (
        CLK => CLK,
		  RST => RST,
		  CHEN => CHEN
	);

	process
	begin
		RST <= '1';
		wait for 1 ps;
		RST <= '0';
		wait;
	end process;
	
	process
	begin
		CLK <= not(CLK);
		wait for 1 ps;
	end process;
	
end tb ;
