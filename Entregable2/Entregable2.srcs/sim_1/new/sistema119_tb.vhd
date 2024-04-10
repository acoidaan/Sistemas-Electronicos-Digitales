library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sistema119_tb is
--  Port ( );
end sistema119_tb;

architecture Behavioral of sistema119_tb is

  component sistema119
    port (clk : in STD_LOGIC;
          ce : in STD_LOGIC;
          reset : in STD_LOGIC;
          count : out STD_LOGIC_VECTOR (3 downto 0);
          led : out STD_LOGIC_VECTOR (6 downto 0));
  end component;

  signal clk : STD_LOGIC := '0';
  signal ce : STD_LOGIC := '0';
  signal reset : STD_LOGIC := '0';
  signal count : STD_LOGIC_VECTOR (3 downto 0);
  signal led : STD_LOGIC_VECTOR (6 downto 0);

begin

  dut : sistema119
  port map (clk => clk,
            ce => ce,
            reset => reset,
            count => count,
            led => led);

  -- Clock generation
  clk <= not clk after 10 ns;

  stimuli : process
  begin

    ce <= '0'; reset <= '1';
    wait for 100 ns;
    reset <= '0';
    wait for 100 ns;
    ce <= '1';
    wait;
  end process;

end Behavioral;