library IEEE;
use ieee.std_logic_1164.all;

-- Entity Declaration: 
entity and_2 is
	port(A_in, B_in 	: in std_logic;
		  andpro		: out std_logic);
end and_2;
architecture behavioural of and_2 is
  begin
andpro <= A_in and B_in;
end behavioural;