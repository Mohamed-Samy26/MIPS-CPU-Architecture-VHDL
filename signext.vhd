----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:32:09 05/07/2021 
-- Design Name: 
-- Module Name:    signext - Behavioral 
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

entity signext is
   port(a: in STD_LOGIC_VECTOR(15 downto 0);
	y: out STD_LOGIC_VECTOR(31 downto 0));
end signext;

architecture Behavioral of signext is

begin

y <= X"ffff" & a WHEN a(15) = '1' ELSE
X"0000" & a;
end Behavioral;

