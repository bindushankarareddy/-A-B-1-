library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity testbench is
end testbench;
architecture behavior of testbench is
component main
port(A,B : in std_logic_vector (7 downto 0);
	  clk,rst,load: in std_logic;
		  mainout : out std_logic_vector (15 downto 0));
		  end component;
	signal clk,rst,load: std_logic:='0';
	signal A, B: std_logic_vector (7 downto 0);
	signal mainout : std_logic_vector(15downto 0);
	begin
	uut1: main port map(
	A=>A,
	B=>B,
	clk=>clk,
	rst=>rst,
	load=>load,
	mainout=>mainout);
	clk<= '0' after 5ps, '1' after 10 ps;
	rst<= '1' after 1 ps, '0' after 2 ps;
	load<= '0' after 2 ps, '1' after 3 ps;
	A<="00011111";
	B<="00001111";
	end;




