library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

-- Entity Declaration: 
entity divby4 is
	port(Z : in std_logic_vector (15 downto 0);
		  divby4out		: out std_logic_vector (15 downto 0));
end divby4;

Architecture structural of divby4 is
  begin
	
	-- Shifting the Z by two bits to right and store it in divby4out:
	divby4out(0)<=Z(2);
    divby4out(1)<=Z(3);
	divby4out(2)<=Z(4);
	divby4out(3)<=Z(5);
	divby4out(4)<=Z(6);
	divby4out(5)<=Z(7);
	divby4out(6)<=Z(8);
	divby4out(7)<=Z(9);
	divby4out(8)<=Z(10);
	divby4out(9)<=Z(11);
	divby4out(10)<=Z(12);
	divby4out(11)<=Z(13);
	divby4out(12)<=Z(14);
	divby4out(13)<=Z(15);
	divby4out(14)<='0';
	divby4out(15)<='0';

	end structural;