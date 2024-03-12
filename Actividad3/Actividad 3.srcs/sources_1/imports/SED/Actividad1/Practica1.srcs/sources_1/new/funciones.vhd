----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.02.2024 14:55:06
-- Design Name: 
-- Module Name: funciones - Behavioral
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

entity funciones is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           f0 : out STD_LOGIC;
           f1 : out STD_LOGIC;
           f2 : out STD_LOGIC;
           f3 : out STD_LOGIC;
           f4 : out STD_LOGIC;
           f5 : out STD_LOGIC;
           f6 : out STD_LOGIC);
end funciones;

architecture Behavioral of funciones is

begin

    f0 <= not a;
    f1 <= a and b;
    f2 <= a nand b;
    f3 <= a or b;
    f4 <= a nor b;
    f5 <= a xor b;
    f6 <= a xnor b;


end Behavioral;
