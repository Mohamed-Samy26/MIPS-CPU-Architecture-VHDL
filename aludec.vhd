----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:58:20 05/23/2021 
-- Design Name: 
-- Module Name:    aludec - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- ALU control decoder
 
 
entity aludec is 
port(funct: in STD_LOGIC_VECTOR(5 downto 0);
aluop: in STD_LOGIC_VECTOR(1 downto 0);
alucontrol: out STD_LOGIC_VECTOR(2 downto 0));
end;

architecture behave of aludec is
begin
process(aluop, funct) 
begin
 case aluop is
   when "00" => alucontrol <= "010"; -- add (for 1w/sw/addi)
   when "01" => alucontrol <= "110"; -- sub (for beq)
   when others => 
	 case funct is -- R-type instructions
      when "100000" => alucontrol <= "010"; -- add
      when "100010" => alucontrol <= "110"; -- sub
      when "100100" => alucontrol <= "000"; -- and
      when "100101" => alucontrol <= "001"; -- or
      when "101010" => alucontrol <= "111"; -- slt
      when others => alucontrol <= "---"; -- ???
    end case;
 end case;
end process;
end;