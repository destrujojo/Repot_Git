library ieee;
use ieee.std_logic_1164.all;

entity shift_register_universal8 is
    port(
	 ssr, ssl, clk, SETn, RSTn : in std_logic;
	 pi : in std_logic_vector(7 downto 0);
	 sel : in std_logic_vector(2 downto 0);
    sor, sol: out std_logic;
	 qo : out std_logic_vector(7 downto 0)
	 );
end shift_register_universal8;

architecture behavorial of shift_register_universal8 is 
    signal q : std_logic_vector(7 downto 0);
begin
  process(clk, SETn, RSTn)
  begin
    if (RSTn = '0') then
      q <= "11111111";
    elsif (RSTn ='1' and SETn ='0') then
      q <= "00000000"; 
    else
       if (clk'event and clk = '1') then
		 
			if (sel = "001") then
				q <= ssr & q(7 downto 1);
			elsif (sel = "010") then	
				q <= q(6 downto 0) & ssl;
			elsif (sel = "101") then
				q <= q(0) & q(7 downto 1);
			elsif (sel = "110") then	
				q <= q(6 downto 0) & q(7);
			elsif (sel(1 downto 0) = "11") then
				q <= pi;
			else
				q <= q;
			end if;
			
--			case sel is 
--			    when "001" => 
--					sorbis <= q(0);
--					q <= '0' & q(7 downto 1);
--					q(7) <= ssr;
--				 when "010" =>
--					solbis <= q(7);	
--					q <= q(6 downto 0) & '0';
--					q(0) <= ssl;
--				 when "101" =>
--					sorbis <= q(0);
--					q <= '0' & q(7 downto 1);
--					q(7) <= sorbis;
--				 when "110" =>
--					solbis <= q(7);	
--					q <= q(6 downto 0) & '0';
--					q(0) <= solbis;
--				 when others =>
--					case sel(1 downto 0) is 
--					  when "11" => q <= pi;
--					  when others => q <= q;
--					end case;
--			end case;
		 end if;
    end if; 
  end process; 
  qo <= q;
  sor <= q(0);
  sol <= q(7);
end behavorial; 