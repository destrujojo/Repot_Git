library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity transcoder is
	port(
        -- ENTREES
		clk : in std_logic;
		rst : in std_logic;
		codein : in std_logic_vector(3 downto 0);
		X : in std_logic_vector(3 downto 0);
		-- SORTIES
		codeout : out std_logic_vector(3 downto 0);
	);
end entity;

architecture behavioral of transcoder is
	
begin 
	process(clk, rst)
	begin
		if rst = '1' then
			codeout <= '0000';
		elsif (clk'event and clk ='1') then
			codeout <= codein or X;
		end if;
	end process;

end behavioral;
