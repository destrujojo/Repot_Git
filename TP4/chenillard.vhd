library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

-- DESCRIPTION DES ENTREES/SORTIES DE L'ENTITY
entity chenillard is
	port (
		CLK, RST : in std_logic;
		CHEN : out std_logic_vector(9 downto 0)
	);
end chenillard;


architecture behavioral of chenillard is

	signal lard : std_logic_vector(9 downto 0);

begin
	process(CLK,RST)
	begin
		if(RST = '1') then
			lard <= "0000001111";
		elsif (CLK'event and CLK = '1') then
			lard <= lard(8 downto 0) & lard(9);
		end if;
	end process;
	
	CHEN <= lard;
end behavioral;