library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dec7seg_tb is
--  Port ( );
end dec7seg_tb;

architecture Behavioral of dec7seg_tb is

    component dec7seg
      port (bcd : in std_logic_vector (3 downto 0);
            led : out std_logic_vector (6 downto 0));
    end component;

    signal bcd : std_logic_vector (3 downto 0) := (others => '0');
--    signal bcd : std_logic_vector (3 downto 0) := X"0";
--    signal bcd : std_logic_vector (3 downto 0) := "0000";
    signal led : std_logic_vector (6 downto 0);

    constant Tb_semiPeriod : time := 10ns;
    signal TbSimEnded : std_logic := '0';

begin

    dut : dec7seg
    port map (bcd => bcd,
              led => led);


    bcd(0) <= not bcd(0) after Tb_semiPeriod    when TbSimEnded /= '1' else '0';
    bcd(1) <= not bcd(1) after Tb_semiPeriod*2  when TbSimEnded /= '1' else '0';
    bcd(2) <= not bcd(2) after Tb_semiPeriod*4  when TbSimEnded /= '1' else '0';
    bcd(3) <= not bcd(3) after Tb_semiPeriod*8  when TbSimEnded /= '1' else '0';

    
    TbSimEnded <= '1' after 16 * Tb_semiPeriod;

end Behavioral;