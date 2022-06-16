--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package DataPathPackage is

component adder
   port(a, b: in STD_LOGIC_VECTOR(31 downto 0);
           y: out STD_LOGIC_VECTOR(31 downto 0));
end component;

component sl2
   port(a: in STD_LOGIC_VECTOR(31 downto 0);
        y: out STD_LOGIC_VECTOR(31 downto 0));
end component;

component signext
   port(a: in STD_LOGIC_VECTOR(15 downto 0);
	y: out STD_LOGIC_VECTOR(31 downto 0));
end component;

component Flopr is 
generic (n : NATURAL := 32);
port(clk, reset: in STD_LOGIC;
d: in STD_LOGIC_VECTOR(n-1 downto 0);
q: out STD_LOGIC_VECTOR(n-1 downto 0));
end component;

component mux2 generic(width: integer);
	port(d0, d1: in STD_LOGIC_VECTOR(width-1 downto 0);
	s: in STD_LOGIC;
	y: out STD_LOGIC_VECTOR(width-1 downto 0));
end component;

component alu
	port(a, b: in STD_LOGIC_VECTOR(31 downto 0);
	alucontrol: in STD_LOGIC_VECTOR(2 downto 0);
	result: buffer STD_LOGIC_VECTOR(31 downto 0);
	zero: out STD_LOGIC);
end component;

component regfile
	port(clk: in STD_LOGIC;
	we3: in STD_LOGIC;
	ra1, ra2, wa3: in STD_LOGIC_VECTOR(4 downto 0);
	wd3: in STD_LOGIC_VECTOR(31 downto 0);
	rd1, rd2: out STD_LOGIC_VECTOR(31 downto 0));
end component;


end DataPathPackage;

package body DataPathPackage is

end DataPathPackage;
