library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

-- Entity Declaration: 
entity main is
	port(A,B : in std_logic_vector (7 downto 0);
	  clk,rst,load: in std_logic;
		  mainout : out std_logic_vector (15 downto 0));
end main;

Architecture structural of main is
  
  ----register compponent
  component reg is
    port(regin : in std_logic_vector (7 downto 0);
		  regout		: out std_logic_vector (7 downto 0);
		  clk,rst,load: in std_logic);
end component;

-- Multiplier component:
  component multiplier is
	port(A,B : in std_logic_vector (7 downto 0);
		  Z		: out std_logic_vector (15 downto 0));
end component;

-- Divide by 4 component:
 component divby4 is
port(Z : in std_logic_vector (15 downto 0);
		  divby4out		: out std_logic_vector (15 downto 0));
end component;

-- Add one component:
component addone is
port(divby4out : in std_logic_vector (15 downto 0);
		  add_out		: out std_logic_vector (15 downto 0);
		  Cout: out std_logic);
end component;

--signal declaration:
signal Z : std_logic_vector(15 downto 0);
signal divby4out : std_logic_vector(15 downto 0);
signal regA_out: std_logic_vector (7 downto 0);
signal regB_out: std_logic_vector (7 downto 0);

begin
  regA: reg port map (A(7 downto 0), regA_out(7 downto 0),clk,rst,load); 
  regB: reg port map (B(7 downto 0), regB_out(7 downto 0),clk,rst,load);
  mult: multiplier port map(regA_out(7 downto 0),regB_out(7 downto 0),Z(15 downto 0) );
  divby: divby4 port map(Z(15 downto 0), divby4out(15 downto 0));
  add1: addone port map (divby4out (15 downto 0), mainout(15 downto 0));
  
    end structural;
