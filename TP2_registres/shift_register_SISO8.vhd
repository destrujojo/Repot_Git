library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shift_register_SISO8 is
	port (
		si: in std_logic;
		clk, SETn, RSTn : in std_logic;
		so : out std_logic
	);
end shift_register_SISO8;

architecture behavioral of shift_register_SISO8 is
	signal s : std_logic_vector(7 downto 0);
	signal sobis : std_logic;
begin
	process(clk, SETn, RSTn)
	begin
	   if (SETn = '0') then
			s <= "11111111";
		elsif (RSTn = '0' and SETn = '1') then
			s <= "00000000";
		elsif (RSTn = '1' and SETn = '1') then
			if (Clk'event and Clk ='1') then
				sobis <= s(7);	
				s <= s(6 downto 0) & '0';
				s(0) <= si;
			end if;
		end if;
	end process;
	so <= sobis;
end behavioral;
