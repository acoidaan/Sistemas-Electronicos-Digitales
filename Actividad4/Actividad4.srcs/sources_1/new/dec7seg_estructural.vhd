library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



library UNISIM;
use UNISIM.VComponents.all;

entity dec7seg_estructural is
    Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
           led : out STD_LOGIC_VECTOR (6 downto 0));
end dec7seg_estructural;

architecture Behavioral of dec7seg_estructural is

begin

  -- LUT4: 4-input Look-Up Table with general output
  --       Artix-7
  -- Xilinx HDL Language Template, version 2023.1

  LUT4_inst0 : LUT4
  generic map (
    INIT => X"0012")
  port map (
    O => led(0),    -- LUT general output
    I0 => bcd(0),   -- LUT input
    I1 => bcd(1),   -- LUT input
    I2 => bcd(2),   -- LUT input
    I3 => bcd(3)    -- LUT input
  );
  LUT4_inst1 : LUT4
  generic map (
    INIT => X"0060")
  port map (
    O => led(1),    -- LUT general output
    I0 => bcd(0),   -- LUT input   
    I1 => bcd(1),   -- LUT input
    I2 => bcd(2),   -- LUT input
    I3 => bcd(3)    -- LUT input
    );
  LUT4_inst2 : LUT4
  generic map (
    INIT => X"0004")
  port map (
    O => led(2),    -- LUT general output
    I0 => bcd(0),   -- LUT input   
    I1 => bcd(1),   -- LUT input
    I2 => bcd(2),   -- LUT input
    I3 => bcd(3)    -- LUT input
  );
  LUT4_inst3 : LUT4
  generic map (
    INIT => X"0092")
  port map (
    O => led(3),    -- LUT general output
    I0 => bcd(0),   -- LUT input   
    I1 => bcd(1),   -- LUT input
    I2 => bcd(2),   -- LUT input
    I3 => bcd(3)    -- LUT input
  );
  LUT4_inst4 : LUT4
  generic map (
    INIT => X"02BA")
  port map (
    O => led(4),    -- LUT general output
    I0 => bcd(0),   -- LUT input   
    I1 => bcd(1),   -- LUT input
    I2 => bcd(2),   -- LUT input
    I3 => bcd(3)    -- LUT input
  );
  LUT4_inst5 : LUT4
  generic map (
    INIT => X"008E")
  port map (
    O => led(5),    -- LUT general output
    I0 => bcd(0),   -- LUT input   
    I1 => bcd(1),   -- LUT input
    I2 => bcd(2),   -- LUT input
    I3 => bcd(3)    -- LUT input
  );
  LUT4_inst6 : LUT4
  generic map (
    INIT => X"0083")
  port map (
    O => led(6),    -- LUT general output
    I0 => bcd(0),   -- LUT input   
    I1 => bcd(1),   -- LUT input
    I2 => bcd(2),   -- LUT input
    I3 => bcd(3)    -- LUT input
  );
    
end Behavioral;