library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity funciones119 is
  Port (a : in STD_LOGIC;
        b : in STD_LOGIC;
        c : in STD_LOGIC;
        d : in STD_LOGIC;
        f0 : out STD_LOGIC;
        f1 : out STD_LOGIC) ;
end funciones119;

architecture Behavioral of funciones119 is

begin

    f0 <= (not a and c) or (not a and b) or (b and c and d) or (a and not b and not c and not d);
    f1 <= (a and not d) or (b and not c) or (not b and not d) or (not a and not c) or (a and not b and c);

end Behavioral;