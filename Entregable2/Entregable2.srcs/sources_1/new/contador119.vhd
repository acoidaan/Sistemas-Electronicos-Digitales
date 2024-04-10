library IEEE;
use IEEE.std_logic_1164.ALL;

entity contador119 is
  Port ( clk    : in STD_LOGIC;
          ce    : in STD_LOGIC;
          reset : in STD_LOGIC;
          count : out STD_LOGIC_VECTOR (3 downto 0));
end contador119;

architecture Behavioral of contador119 is

  component ffD_reset
    port ( 
      clk   : in STD_LOGIC;
      ce    : in STD_LOGIC;
      reset : in STD_LOGIC;
      d     : in STD_LOGIC;
      q     : out STD_LOGIC
    );
  end component;
  component ffT_preset
    port (
      clk    : in STD_LOGIC;
      ce     : in STD_LOGIC;
      preset : in STD_LOGIC;
      t      : in STD_LOGIC;
      q      : out STD_LOGIC
    );
  end component;
  signal qa, qb, qc, qd : STD_LOGIC;
  signal ta, db, dc, td : STD_LOGIC;
begin

  unitA: ffT_preset port map (
    clk => clk,
    ce => ce,
    preset => reset,
    t => ta,
    q => qa
  );
  unitB: ffD_reset port map (
    clk => clk,
    ce => ce,
    reset => reset,
    d => db,
    q => qb
  );
  unitC: ffD_reset port map (
    clk => clk,
    ce => ce,
    reset => reset,
    d => dc,
    q => qc
  );
  unitD: ffT_preset port map (
    clk => clk,
    ce => ce,
    preset => reset,
    t => td,
    q => qd
  );

  ta <= (qa and not qb and not qc) or (not qa and qb and qc and not qd) or (not qa and qb and not qc and qd);
  db <= (not qa and qc and qd) or (not qa and not qb and not qd) or (not qa and qb and not qc and not qd);
  dc <= (not qa and not qb and not qd) or (not qa and not qb and not qc) or (not qa and not qc and not qd);
  td <= (not qa and qb and qc) or (not qa and qb and qd) or (qa and not qb and not qc);

  count <= qa & qb & qc & qd;

end Behavioral;