library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity divider_top is
    port (
      clk : in std_logic;
      cnt : out std_logic
    );
end divider_top;

architecture structural of divider_top is

component clock_div
    port (
      clk : in std_logic;
      cnt : out std_logic
    );
end component;

begin
    cd: clock_div
    port map(
        clk,
        cnt
    );

end structural;