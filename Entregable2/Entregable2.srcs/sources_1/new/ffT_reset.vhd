library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ffT_reset is
  Port ( reset : in std_logic;
         clk   : in std_logic;
         ce    : in std_logic;
         t     : in std_logic;
         q     : out std_logic);
end ffT_reset;

architecture Behavioral of ffT_reset is

signal q_int : std_logic;

begin

process (clk, reset)
begin
  if reset = '1' then
    q_int <= '0';
  elsif (clk'event and clk='1') then
    if ce = '1' then
      if t = '1' then
        q_int <= not q_int;
      end if;
    end if;
  end if;
end process;
q <= q_int;

end Behavioral;