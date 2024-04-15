library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sistema119 is
    port ( clk   : in STD_LOGIC;
           ce    : in STD_LOGIC;
           reset : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR (3 downto 0);
           led   : out STD_LOGIC_VECTOR (6 downto 0));
end sistema119;

architecture Behavioral of sistema119 is

    component contador119
        port (clk   : in std_logic;
              reset : in std_logic;
              ce    : in std_logic;
              count : out std_logic_vector (3 downto 0));
    end component;
    
    component dec7seg
        port (bcd : in std_logic_vector (3 downto 0);
              led : out std_logic_vector (6 downto 0));
    end component;
    
    signal int : std_logic_vector (3 downto 0);

begin

    Inst_contador : contador119
    port map (clk   => clk,
              reset => reset,
              ce    => ce,
              count => int);
    
    Inst_dec7seg : dec7seg
    port map (bcd => int,
              led => led);
              
    count <= int;

end Behavioral;