library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

-- DECLARATION D'UNE ENTITE
entity tb_shift_register_universal8 is
end tb_shift_register_universal8;

architecture tb of tb_shift_register_universal8 is
    -- Déclaration des signaux de test
	signal clk, SETn, RSTn, ssr, ssl : std_logic := '0';
	signal pi : std_logic_vector(7 downto 0) := "00000000";
	signal qo : std_logic_vector(7 downto 0);
	signal sel : std_logic_vector(2 downto 0) := "000";
	signal sor, sol : std_logic;
begin
    -- Instanciation de l'entité testée, récupérée dans la librairie work
    -- On appelle cette instance UUT (Unit Under Test)
	UUT : entity work.shift_register_universal8 port map (
        clk => clk,
		  SETn => SETn,
		  RSTn => RSTn,
		  ssr => ssr,
		  ssl => ssl,
		  pi => pi,
		  qo => qo,
		  sel => sel,
		  sol => sol,
		  sor => sor
	);

	clock : process
	begin
		wait for 5 ns;
		clk <= not(clk);
	end process;
	
	test : process
	begin
		case sel is 
			 when "001" => 
				ssr <= not(ssr);
			 when "010" =>
				ssl <= not(ssl);
			 when others =>
				if ( sel(1 downto 0) = "11") then
					pi <= pi + "1";
				end if;
		end case;
		wait for 10 ns;
	end process;
	
	Valsel : process
	begin
		wait for 2560 ns;
		sel <= sel + "1";
		RSTn <= not(RSTn);
		wait for 2560 ns;
		SETn <= not(SETn);
	end process;
	
end tb ;
