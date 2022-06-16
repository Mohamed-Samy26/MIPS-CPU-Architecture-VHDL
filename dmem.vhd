library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use IEEE.STD_LOGIC_SIGNED.all;
use IEEE.STD_LOGIC_ARITH.all;
use ieee.numeric_std.all;

entity dmem is -- data memory
port(clk, we: in STD_LOGIC;
a, wd: in STD_LOGIC_VECTOR (31 downto 0);
rd: out STD_LOGIC_VECTOR (31 downto 0));
end;
architecture behave of dmem is
begin
process  is
type ramtype is array (63 downto 0) of STD_LOGIC_VECTOR(31 downto 0);
variable mem: ramtype;
begin
-- read or write memory
for i in 1 to 1000 loop
if rising_edge(clk) then
if (we='1') then 
mem (CONV_INTEGER('0'&a(7 downto 2))):= wd;
end if;
end if;
rd <= mem (CONV_INTEGER('0'&a (7 downto 2)));
wait on clk, a;
end loop;
end process;
end;
