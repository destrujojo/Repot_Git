library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DECLARATION D'UNE ENTITE
entity tb_shift_register_SISO8 is
end tb_shift_register_SISO8;

architecture tb of tb_shift_register_SISO8 is
    -- Déclaration des signaux de test
	signal clk, SETn, RSTn, si, so : std_logic := '0';
begin
    -- Instanciation de l'entité testée, récupérée dans la librairie work
    -- On appelle cette instance UUT (Unit Under Test)
	UUT : entity work.shift_register_SISO8 port map (
        so => so,
		  si => si,
		  clk => clk,
		  SETn => SETn,
		  RSTn => RSTn
	);

	clock : process
	begin
		wait for 5 ns;
		clk <= not(clk);
	end process;
	
	Valsi : process
	begin
		wait for 10 ns;
		si <= not(si);
	end process;
	
	ValSetn : process
	begin
		wait for 300 ns;
		SETn <= not(SETn);
	end process;
	
	ValRstn : process
	begin
		wait for 601 ns;
		RSTn <= not(RSTn);
	end process;	
end tb ;
