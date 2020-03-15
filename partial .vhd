library IEEE;
use ieee.std_logic_1164.all;

-- Entity Declaration: 
entity partial is
	port( A  	: in std_logic_vector (7 downto 0);
	      B  	: in std_logic_vector (7 downto 0);
		  PP	: out std_logic_vector (48 downto 0));
end partial;

Architecture structural of partial is

component AND_2 is
port (A_in, B_in : in std_logic ; 
      andpro : out std_logic) ; 
end component ;
  
begin
and1: and_2 	port map(A(0),B(0),PP(0));
and2: and_2 	port map(A(1),B(0),PP(1));
and3: and_2 	port map(A(2),B(0),PP(2));
and4: and_2 	port map(A(3),B(0),PP(3));
and5: and_2 	port map(A(4),B(0),PP(4));
and6: and_2 	port map(A(5),B(0),PP(5));
and7: and_2 	port map(A(6),B(0),PP(6));
and9: and_2 	port map(A(0),B(1),PP(7));
and10: and_2 	port map(A(1),B(1),PP(8));
and11: and_2 	port map(A(2),B(1),PP(9));
and12: and_2 	port map(A(3),B(1),PP(10));
and13: and_2 	port map(A(4),B(1),PP(11));
and14: and_2 	port map(A(5),B(1),PP(12));
and15: and_2 	port map(A(6),B(1),PP(13));
and17: and_2 	port map(A(0),B(2),PP(14));
and18: and_2 	port map(A(1),B(2),PP(15));
and19: and_2 	port map(A(2),B(2),PP(16));
and20: and_2 	port map(A(3),B(2),PP(17));
and21: and_2 	port map(A(4),B(2),PP(18));
and22: and_2 	port map(A(5),B(2),PP(19));
and23: and_2 	port map(A(6),B(2),PP(20));
and25: and_2 	port map(A(0),B(3),PP(21));
and26: and_2 	port map(A(1),B(3),PP(22));
and27: and_2 	port map(A(2),B(3),PP(23));
and28: and_2 	port map(A(3),B(3),PP(24));
and29: and_2 	port map(A(4),B(3),PP(25));
and30: and_2 	port map(A(5),B(3),PP(26));
and31: and_2 	port map(A(6),B(3),PP(27));
and33: and_2 	port map(A(0),B(4),PP(28));
and34: and_2 	port map(A(1),B(4),PP(29));
and35: and_2 	port map(A(2),B(4),PP(30));
and36: and_2 	port map(A(3),B(4),PP(31));
and37: and_2 	port map(A(4),B(4),PP(32));
and38: and_2 	port map(A(5),B(4),PP(33));
and39: and_2 	port map(A(6),B(4),PP(34));
and41: and_2 	port map(A(0),B(5),PP(35));
and42: and_2 	port map(A(1),B(5),PP(36));
and43: and_2 	port map(A(2),B(5),PP(37));
and44: and_2 	port map(A(3),B(5),PP(38));
and45: and_2 	port map(A(4),B(5),PP(39));
and46: and_2 	port map(A(5),B(5),PP(40));
and47: and_2 	port map(A(6),B(5),PP(41));
and51: and_2 	port map(A(0),B(6),PP(42));
and52: and_2 	port map(A(1),B(6),PP(43));
and53: and_2 	port map(A(2),B(6),PP(44));
and54: and_2 	port map(A(3),B(6),PP(45));
and55: and_2 	port map(A(4),B(6),PP(46));
and56: and_2 	port map(A(5),B(6),PP(47));
and57: and_2 	port map(A(6),B(6),PP(48));
end structural;                      