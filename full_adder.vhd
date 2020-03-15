library IEEE;
use ieee.std_logic_1164.all;

-- Entity Declaration: 
entity full_adder is
	port(A_f,B_f,C_f	: in std_logic;
		  sum_f,carry_f		: out std_logic);
end full_adder;
architecture behavioural of full_adder is
  signal m ,n,g,h: std_logic;
  begin
m <= A_f xor B_f ;
sum_f<= m xor C_f ;
n <= A_f and B_f  ;
g <= B_f and C_f;
h <= C_f and A_f;
carry_f <= n or g or h;
end behavioural;

