library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity contador119 is
    port ( clk   : in std_logic;
           ce    : in std_logic;
           reset : in std_logic;
           count : out std_logic_vector (3 downto 0));
end contador119;

architecture Behavioral of contador119 is

  component ffD_preset
    port ( clk    : in std_logic;
           ce     : in std_logic;
           preset : in std_logic;
           d      : in std_logic;
           q      : out std_logic);
  end component;

  component ffD_reset
    port ( clk   : in std_logic;
          ce    : in std_logic;
          reset : in std_logic;
          d     : in std_logic;
          q     : out std_logic);
  end component;

  component ffT_preset
    port ( clk     : in std_logic;
           ce      : in std_logic;
           preset  : in std_logic;
           t       : in std_logic;
           q       : out std_logic);
  end component;

  component ffT_reset
    port ( clk   : in std_logic;
           ce    : in std_logic;
           reset : in std_logic;
           t     : in std_logic;
           q     : out std_logic);
  end component;

    signal qa, qb, qc, qd : std_logic;
    signal ta, db, dc, td : std_logic;

begin

    unitA: ffT_reset port map (
        clk   => clk,
        ce    => ce,
        reset => reset,
        t     => ta,
        q     => qa
        );

    unitB: ffD_reset port map (
        clk   => clk,
        ce    => ce,
        reset => reset,
        d     => db,
        q     => qb
        );

    unitC: ffD_preset port map (
        clk    => clk,
        ce     => ce,
        preset => reset,
        d      => dc,
        q      => qc
        );

    unitD: ffT_preset port map (
        clk    => clk,
        ce     => ce,
        preset => reset,
        t      => td,
        q      => qd
        );
    
    ta <= (qa) or (qb and qc and not qd) or (qb and not qc and qd);
    db <= (qc and qd) or (not qa and not qb and qd) or (qb and not qc and not qd);
    dc <= (qb and not qc and not qd) or (not qa and not qb and not qd) or (not qa and not qb and not qc);
    td <= (qa) or (qb and qc) or (qb and qd);
    
    count <= qa & qb & qc & qd;
    
end Behavioral;