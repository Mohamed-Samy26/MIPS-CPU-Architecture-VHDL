library IEEE;
use IEEE.STD_LOGIC_1164.all;
--use IEEE.NUMERIC_STD_UNSIGNED.all;
use work.mypack.all;

entity top is 
port(clk, reset: in STD_LOGIC;
writedata, dataadr: out  STD_LOGIC_VECTOR(31 downto 0);
memwrite: out STD_LOGIC);
end;

architecture struct of top is
signal pc, instr, readdata ,dataadrt,writedatat: STD_LOGIC_VECTOR(31 downto 0);
signal memwritet:  STD_LOGIC;
begin
-- instantiate processor and memories (Write your logic here)
m:mips port map(clk, reset, pc, instr, memwritet, dataadrt, writedatat, readdata);
dm:dmem port map(clk, memwritet, dataadrt, writedatat, readdata);
im:imem port map(pc(7 downto 2), instr);
dataadr <= dataadrt;
memwrite <= memwritet;
writedata <= writedatat;
end;
