library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity toplevel is
	port (
		SW : in std_logic_vector(9 downto 0);
		KEY : in std_logic_vector(3 downto 0);
		LEDG : out std_logic_vector(7 downto 0);
		p : in std_logic_vector(7 downto 0) := "00000000";
		sol, sor : out std_logic
	);
end toplevel;

architecture behavioral of toplevel is
	
begin
	UUT : entity work.shift_register_universal8 port map(
	ssr => SW(9),
	ssl => SW(8),
	pi => p,
	sel => SW(2 downto 0),
	RSTn => KEY(3),
	SETn => KEY(2),
	clk => not(KEY(0)),
	sol => sol,
	sor => sor,
	qo => LEDG(7 downto 0)
	);
end behavioral;
