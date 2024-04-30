library ieee;
use ieee.std_logic_1164.all;

entity flipflop_JKrs is
    port(j,k,clk,SETn, RSTn : in std_logic;
    Q, Qn : out std_logic);
end flipflop_JKrs;

architecture behavorial of flipflop_JKrs is 
    signal Qp : std_logic;
    signal JK : std_logic_vector (1 downto 0);
begin
  JK(1) <= j;
  JK(0) <= k;
  process(Clk, SETn, RSTn)
  begin
    if (RSTn = '0'and SETn = '0') then
      Qp <= '0';
    elsif (RSTn = '0' and SETn = '1') then
      Qp <= '0';
    elsif (RSTn ='1' and SETn ='0') then
      Qp <='1'; 
    elsif (RSTn = '1' and SETn ='1') then
      if (Clk'event and Clk ='1') then 
			 case JK is 
				when "00" => Qp <= Qp ;
				when "01" => Qp <= '0';
				when "10" => Qp <= '1';
				when "11" => Qp <= not(Qp) ; 
				when others => Qp <= Qp;
			 end case; 
		end if; 
    end if; 
  end process; 
  Q <= Qp; 
  Qn <= not(Qp); 
end behavorial; 