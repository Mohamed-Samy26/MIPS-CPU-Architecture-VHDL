----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:14:23 05/07/2021 
-- Design Name: 
-- Module Name:    mux2 - Behavioral 
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

entity mux2 is generic(width: integer);
	port(d0, d1: in STD_LOGIC_VECTOR(width-1 downto 0);
	s: in STD_LOGIC;
	y: out STD_LOGIC_VECTOR(width-1 downto 0));
END Mux2; 
ARCHITECTURE MuxArch OF Mux2 IS
BEGIN
y <= d1 WHEN s='1' ELSE d0; 
END MuxArch;
