library IEEE; use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
entity Flopr is 
generic (n : NATURAL := 32);
port(clk, reset: in STD_LOGIC;
d: in STD_LOGIC_VECTOR(n-1 downto 0);
q: out STD_LOGIC_VECTOR(n-1 downto 0));
end;
architecture behavioral of Flopr is
begin
process(clk, reset) begin
if reset='1' then q <= (others => '0');
elsif rising_edge(clk) then
q <= d;
end if;
end process;
end;
