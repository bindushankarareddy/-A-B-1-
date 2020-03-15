library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

-- Entity Declaration: 
entity reg16 is
	port(Y : in std_logic_vector (15 downto 0);
		  M	: out std_logic_vector (15 downto 0);
		  clk,rst,load: in std_logic);
end reg16;
Architecture behavioural of reg16 is
 signal   n	: std_logic_vector (15 downto 0);
  begin
process (clk)
  begin
 if rising_edge(clk) then
 if (rst = '1') then
 M <= "0000000000000000";
 elsif (load = '1') then
 n <= Y;
 M <= n;
 end if;
end if;
end process; 
end behavioural;



