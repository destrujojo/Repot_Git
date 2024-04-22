library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity flipflop_JK is
	port (
		j, k, clk : in std_logic;
		q, qn : out std_logic
	);
end flipflop_JK;

architecture behavioral of flipflop_JK is
	signal qp : std_logic;
	signal jk : std_logic_vector(1 downto 0);
begin
	jk(1) <= j;
	jk(0) <= k;
	process(clk)
	begin
		case jk is
			when "00" => qp <= qp;
			when "01" => qp <= '0';
			when "10" => qp <= '1';
			when "11" => qp <= not(qp);
		end case;
	end process;
	q <= qp;
	qn <= not(qp);
end behavioral;
