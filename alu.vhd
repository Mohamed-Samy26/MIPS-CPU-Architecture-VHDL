----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:19:44 05/07/2021 
-- Design Name: 
-- Module Name:    alu - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_UNSIGNED.ALL ;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu is
port(a, b: in STD_LOGIC_VECTOR(31 downto 0);
	alucontrol: in STD_LOGIC_VECTOR(2 downto 0);
	result: buffer STD_LOGIC_VECTOR(31 downto 0);
	zero: out STD_LOGIC);
end alu;

architecture Behavioral of alu is
signal S,  Bout: STD_LOGIC_VECTOR(31 downto 0);

begin
 Bout <= (not B) when (alucontrol(2) = '1') else B;
S <= A + Bout + alucontrol(2);
result <= A and Bout when alucontrol(1 downto 0) ="00" ELSE
A or Bout when alucontrol(1 downto 0) ="01" ELSE
S when alucontrol(1 downto 0) ="10" ELSE
("0000000000000000000000000000000" & S(31)) when alucontrol(1 downto 0) ="11" 
ELSE X"00000000";
zero<='1' when s=X"00000000"else '0';
end Behavioral;

