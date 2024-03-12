----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.02.2024 12:05:43
-- Design Name: 
-- Module Name: funciones2 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity funciones2 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           g0 : out STD_LOGIC;
           g1 : out STD_LOGIC;
           g2 : out STD_LOGIC;
           g3 : out STD_LOGIC;
           g4 : out STD_LOGIC;
           g5 : out STD_LOGIC;
           g6 : out STD_LOGIC;
           g7 : out STD_LOGIC);
end funciones2;

architecture Behavioral of funciones2 is

begin

    g0 <= a and b and c;
    g1 <= a or b or not c or d;
    g2 <= (a and b) or (a  and c) or (not c and d);
    g3 <= (a and not b and d) or (c and d);
    g4 <= (a or c) and (not b or c) and d;
    g5 <= a xor b xor c xor d;
    g6 <= a and b and c and d;
    g7 <= (a or b) nand (c or d);
    
end Behavioral;
