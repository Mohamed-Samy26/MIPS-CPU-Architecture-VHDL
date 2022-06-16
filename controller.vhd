----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:20:26 05/27/2021 
-- Design Name: 
-- Module Name:    controller - Behavioral 
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
library wprk;
use work.mypack.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity controller is
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
end controller;

architecture Behavioral of controller is
signal aluop:STD_LOGIC_VECTOR(1 downto 0);
signal branch:STD_LOGIC;
begin
md:maindec port map(op,memtoreg,memwrite,branch,alusrc,regdst,regwrite,jump,aluop);
ad:aludec port map(funct,aluop,alucontrol);
pcsrc<=branch and zero;
end Behavioral;

