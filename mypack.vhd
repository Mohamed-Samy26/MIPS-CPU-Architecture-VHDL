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

package mypack is
component aludec is 
port(funct: in STD_LOGIC_VECTOR(5 downto 0);
aluop: in STD_LOGIC_VECTOR(1 downto 0);
alucontrol: out STD_LOGIC_VECTOR(2 downto 0));
end component;
component maindec is
port(op: in STD_LOGIC_VECTOR(5 downto 0);
memtoreg, memwrite: out STD_LOGIC;
branch, alusrc: out STD_LOGIC;
regdst, regwrite: out STD_LOGIC;
jump: out STD_LOGIC;
aluop: out STD_LOGIC_VECTOR(1 downto 0));
end component;
component datapath is -- MIPS datapath
    port(clk, reset: in STD_LOGIC;
    readdata: in STD_LOGIC_VECTOR(31 downto 0);
    instr: in STD_LOGIC_VECTOR(31 downto 0);
    memtoreg, pcsrc,alusrc,regwrite,regdst,jump: in STD_LOGIC;
    aluoperation: in STD_LOGIC_VECTOR(2 downto 0);
    zero: out STD_LOGIC;
    pc: out STD_LOGIC_VECTOR(31 downto 0);
  aluout, writedata: out STD_LOGIC_VECTOR(31 downto 0));
end component;
component controller is
    Port ( op : in  STD_LOGIC_VECTOR (5 downto 0);
           funct : in  STD_LOGIC_VECTOR (5 downto 0);
           zero : in  STD_LOGIC;
           memtoreg : out  STD_LOGIC;
           memwrite : out  STD_LOGIC;
           pcsrc,alusrc: out  STD_LOGIC;
            regdst: out  STD_LOGIC;
           regwrite: out  STD_LOGIC;
           jump : out  STD_LOGIC;
           alucontrol: out  STD_LOGIC_VECTOR(2 downto 0));
end component;

component mips
port(clk, reset: in STD_LOGIC;
pc: out STD_LOGIC_VECTOR(31 downto 0);
instra: in STD_LOGIC_VECTOR(31 downto 0);
memwrite: out STD_LOGIC;
aluout, writedata: out STD_LOGIC_VECTOR(31 downto 0);
readdata: in STD_LOGIC_VECTOR(31 downto 0));
end component;
component imem
port(a: in STD_LOGIC_VECTOR(5 downto 0);
rd: out STD_LOGIC_VECTOR(31 downto 0));
end component;
component dmem
port(clk, we: in STD_LOGIC;
a, wd: in STD_LOGIC_VECTOR(31 downto 0);
rd: out STD_LOGIC_VECTOR(31 downto 0));
end component;
-- type <new_type> is
--  record
--    <type_name>        : std_logic_vector( 7 downto 0);
--    <type_name>        : std_logic;
-- end record;
--
-- Declare constants
--
-- constant <constant_name>		: time := <time_unit> ns;
-- constant <constant_name>		: integer := <value;
--
-- Declare functions and procedure
--
-- function <function_name>  (signal <signal_name> : in <type_declaration>) return <type_declaration>;
-- procedure <procedure_name> (<type_declaration> <constant_name>	: in <type_declaration>);
--

end mypack;

package body mypack is

---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;
 
end mypack;
