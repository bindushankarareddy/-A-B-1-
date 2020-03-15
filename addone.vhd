library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

-- Entity Declaration: 
entity addone is
	port(divby4out : in std_logic_vector (15 downto 0);
		  add_out		: out std_logic_vector (15 downto 0);
		  Cout: out std_logic);
end addone;

Architecture structural of addone is
  signal input_2: std_logic_vector (15 downto 0);
  SIGNAL C : std_logic_vector(15 downto 1) ;
  signal Cin: std_logic;
  
  -- Full adder component
  component full_adder is
  port (A_f, B_f, C_f : in std_logic;
        sum_f, carry_f : OUT std_logic);
  end component;
  
  begin
    input_2(15 downto 0)<="0000000000000001";
    Cin <='0';
    
    fa0: full_adder port map ( divby4out(0), input_2(0), Cin, add_out(0), C(1) ) ;
    G1: FOR i IN 1 TO 14 GENERATE
    FA: full_adder PORT MAP ( divby4out(i), input_2(i),C(i), add_out(i), C(i+1) ) ;  
    END GENERATE ;
    FA15: full_adder PORT MAP ( divby4out(15), input_2(15), C(15), add_out(15), Cout ) ;
  end structural;
