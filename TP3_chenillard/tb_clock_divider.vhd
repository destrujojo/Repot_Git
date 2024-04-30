library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DECLARATION D'UNE ENTITE
entity tb_clock_divider is
end tb_clock_divider;

architecture tb of tb_clock_divider is
    -- Déclaration des signaux de test
	signal CLKin : std_logic := '0';
	signal RST, CLKout : std_logic;
	signal N : std_logic_vector(4 downto 0) := "00010";
begin
    -- Instanciation de l'entité testée, récupérée dans la librairie work
    -- On appelle cette instance UUT (Unit Under Test)
	UUT : entity work.clock_divider port map (
        CLKin => CLKin,
		  RST => RST,
		  CLKout => CLKout,
		  N => N
	);
	
	process
	begin
		CLKin <= not(CLKin);
		wait for 1 ps;
	end process;
	
	process
	begin
		RST <= '1';
		wait for 1 ps;
		RST <= '0';
		wait;
	end process;
	
end tb ;
