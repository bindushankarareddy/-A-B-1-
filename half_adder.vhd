library IEEE;
use ieee.std_logic_1164.all;

-- Entity Declaration: 
entity half_adder is
	port(A_h, B_h 	: in std_logic;
		  sum_h, carry_h		: out std_logic);
end half_adder;
architecture behavioural of half_adder is
  begin
sum_h<= A_h xor B_h;
carry_h<= A_h and B_h;
end behavioural;
