library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

-- Entity Declaration: 
entity multiplier is
	port(A,B : in std_logic_vector (7 downto 0);
		  Z		: out std_logic_vector (15 downto 0));
end multiplier;

Architecture structural of multiplier is
  component partial is
	port( A  	: in std_logic_vector (7 downto 0);
	      B  	: in std_logic_vector (7 downto 0);
		  PP	: out std_logic_vector (48 downto 0));
end component;

component half_adder is
  port (A_h, B_h : in std_logic; 
        sum_h, carry_h : OUT std_logic);
  end component;
  
component full_adder is
  port (A_f, B_f, C_f : in std_logic;
        sum_f, carry_f : OUT std_logic);
  end component;
  
signal sum: std_logic_vector (41 downto 0);
signal carry:  std_logic_vector (41 downto 0);
signal PP	: std_logic_vector (48 downto 0);

begin

-- Partial Product: 
pp1: partial port map (A(7 downto 0),B(7 downto 0),PP(48 downto 0));

-- Passing partial products into Full and half adders:

-- Z0:
Z(0)<=PP(0);

--Z1:
H1: half_adder port map(PP(1),PP(7),sum(0),carry(0));
Z(1)<=sum(0);

--Z2:
F1: full_adder port map(PP(2),PP(8),PP(14),sum(1),carry(1));
H2: half_adder port map(sum(1),carry(0),sum(2),carry(2));
Z(2)<=sum(2);

--Z3:
F2: full_adder port map(PP(3),PP(9),PP(15),sum(3),carry(3));
F3: full_adder port map(sum(3),PP(21),carry(1),sum(4),carry(4));
H3: half_adder port map(sum(4),carry(2),sum(5),carry(5));
Z(3)<=sum(5);

--Z4:
F4: full_adder port map(PP(4),PP(10),PP(16),sum(6),carry(6));
F5: full_adder port map(PP(22),PP(28),sum(6),sum(7),carry(7));
F6: full_adder port map(sum(7),carry(3),carry(4),sum(8),carry(8));
H4: half_adder port map(sum(8),carry(5),sum(9),carry(9));
Z(4)<=sum(9);

--Z5:
F7:  full_adder port map(PP(5),PP(11),PP(17),sum(10),carry(10));
F8:  full_adder port map(PP(23),PP(29),sum(10),sum(11),carry(11));
F9:  full_adder port map(PP(35),sum(11),carry(6),sum(12),carry(12));
F10: full_adder port map(sum(12),carry(7),carry(8),sum(13),carry(13));
H5:  half_adder port map(sum(13),carry(9),sum(14),carry(14));
Z(5)<=sum(14);

--Z6:
F11:  full_adder port map(PP(6),PP(12),PP(18),sum(15),carry(15));
F12:  full_adder port map(PP(24),PP(30),sum(15),sum(16),carry(16));
F13:  full_adder port map(PP(36),sum(16),PP(42),sum(17),carry(17));
F14: full_adder port map(sum(17),carry(10),carry(11),sum(18),carry(18));
F15: full_adder port map(sum(18),carry(12),carry(13),sum(19),carry(19));
H6:  half_adder port map(sum(19),carry(14),sum(20),carry(20));
Z(6)<=sum(20);

--Z7
F16:  full_adder port map(PP(13),PP(19),PP(25),sum(21),carry(21));
F17:  full_adder port map(PP(37),PP(31),sum(21),sum(22),carry(22));
F18:  full_adder port map(PP(43),sum(22),carry(15),sum(23),carry(23));
F19: full_adder port map(sum(23),carry(16),carry(17),sum(24),carry(24));
F20: full_adder port map(sum(24),carry(18),carry(19),sum(25),carry(25));
H7: half_adder port map(sum(25),carry(20),sum(26),carry(26));
Z(7)<=sum(26);


--Z8:
F21:  full_adder port map(PP(32),PP(20),PP(26),sum(27),carry(27));
F22:  full_adder port map(PP(38),PP(44),sum(27),sum(28),carry(28));
F23:  full_adder port map(carry(22),sum(28),carry(21),sum(29),carry(29));
F24: full_adder port map(sum(29),carry(23),carry(24),sum(30),carry(30));
F25: full_adder port map(sum(30),carry(25),carry(26),sum(31),carry(31));
Z(8)<=sum(31);

--Z9:
F26:  full_adder port map(PP(33),PP(39),PP(27),sum(32),carry(32));
F27:  full_adder port map(carry(27),PP(45),sum(32),sum(33),carry(33));
F28:  full_adder port map(carry(28),sum(33),carry(29),sum(34),carry(34));
F29: full_adder port map(sum(34),carry(30),carry(31),sum(35),carry(35));
Z(9)<=sum(35);

--Z10:
F30:  full_adder port map(PP(34),PP(40),PP(46),sum(36),carry(36));
F31:  full_adder port map(carry(32),carry(33),sum(36),sum(37),carry(37));
F32:  full_adder port map(carry(34),sum(37),carry(35),sum(38),carry(38));
Z(10)<=sum(38);


--Z11:
F33:  full_adder port map(PP(41),PP(47),carry(36),sum(39),carry(39));
F34:  full_adder port map(sum(39),carry(37),carry(38),sum(40),carry(40));
Z(11)<=sum(40);

--Z12:
F35:  full_adder port map(PP(48),carry(40),carry(39),sum(41),carry(41));
Z(12)<=sum(41);

--Z13:
Z(13)<=carry(41);

--Z14:
Z(14)<='0';

--Z15:
Z(15)<='0';

  end structural;