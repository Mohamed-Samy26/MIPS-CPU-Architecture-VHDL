----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:55:34 05/27/2021 
-- Design Name: 
-- Module Name:    mips - Behavioral 
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
use work.mypack.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mips is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           pc : out  STD_LOGIC_VECTOR (31 downto 0);
           instra : in  STD_LOGIC_VECTOR (31 downto 0);
           memwrite : out  STD_LOGIC;
           aluout,writedata : out  STD_LOGIC_VECTOR (31 downto 0);
           readdata : in  STD_LOGIC_VECTOR (31 downto 0));
end mips;

architecture Behavioral of mips is
signal zero,memtoreg,alusrc,regdst,regwrite,jump,pcsrc:STD_LOGIC;
signal alucontrol:STD_LOGIC_VECTOR (2 downto 0);
signal pct : STD_LOGIC_VECTOR (31 downto 0);
begin
-- Write your logic here
c:controller port map(instra(31 downto 26) , instra(5 downto 0) , zero , memtoreg , memwrite , pcsrc , alusrc , regdst , regwrite , jump , alucontrol);
d:datapath port map(clk, reset, readdata, instra, memtoreg, pcsrc, alusrc, regwrite, regdst, jump , alucontrol, zero, pc, aluout, writedata);
end Behavioral;

