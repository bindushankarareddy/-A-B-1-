library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

-- Entity Declaration: 
entity reg is
	port(regin : in std_logic_vector (7 downto 0);
		  regout		: out std_logic_vector (7 downto 0);
		  clk,rst,load: in std_logic);
end reg;
Architecture behavioural of reg is
  begin
  process(clk,rst)
begin
if rst = '1' then
regout <= "00000000";
elsif clk'event and clk = '1' then
if load = '1' then
regout <= regin;
end if;
end if;
end process;
end behavioural;




