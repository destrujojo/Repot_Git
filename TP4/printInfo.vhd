library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity printInfo is
	port(
        -- ENTREES
		clk : in std_logic;
		o : in std_logic;
		Y : in std_logic_vector(2 downto 0);
		-- SORTIES
		red : out std_logic_vector(9 downto 0);
		green : out std_logic_vector(7 downto 0);
		let0 : out std_logic_vector(6 downto 0);
		let1 : out std_logic_vector(6 downto 0);
		let2 : out std_logic_vector(6 downto 0);
		let3 : out std_logic_vector(6 downto 0)
	);
end entity;

architecture behavioral of printInfo is
	
begin 
	process(clk)
	begin
		if (clk'event and clk ='1') then
			if (o = '1') then 
				red <= "0000000000";
				-- appeler chennilard
				green <= "11111111";
				-- passer valeur a let 
				
			elsif (y = "100") then
				green <= "00000000";
				
				-- clignoter led rouge 
				red <= "1111111111";
				
				-- passer valeur a let 
			else 
				green <= "00000000";
				red <= "0000000001";
				
				--passer valeur a let 
			
			end if;
		end if;
	end process;

end behavioral;
