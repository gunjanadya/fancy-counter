----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/22/2024 08:07:16 PM
-- Design Name: 
-- Module Name: counter_top - Behavioral
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

entity counter_top is
  Port ( 
      btn : in  std_logic_vector(3 downto 0);
      clk : in  std_logic;
      sw  : in  std_logic_vector(3 downto 0);
      led : out std_logic_vector(3 downto 0)
  );
end counter_top;

architecture Behavioral of counter_top is
    component clock_div is
        port (
          clk : in std_logic;
          div : out std_logic
        );
    end component;
    component debouncer is
        port(
          btn  : in std_logic;
          clk  : in std_logic;
          dbnc : out std_logic := '0'
        );
    end component;
    component fancy_counter is
        Port ( 
              clk    : in std_logic;
              clk_en : in std_logic;
              dir    : in std_logic;
              en     : in std_logic;
              ld     : in std_logic;
              rst    : in std_logic;
              updn   : in std_logic;
              val    : in std_logic_vector (3 downto 0);
              cnt    : out std_logic_vector (3 downto 0)
        );
    end component;  
    signal dbnc1  : std_logic;
    signal dbnc2  : std_logic;
    signal dbnc3  : std_logic;
    signal dbnc4  : std_logic;
    signal div_i   : std_logic;

    begin
        U1: debouncer 
        port map (
            btn => btn(0),
            clk => clk,
            dbnc => dbnc1
        );
        U2: debouncer 
        port map (
            btn => btn(1),
            clk => clk,
            dbnc => dbnc2
        );
        U3: debouncer 
        port map (
            btn => btn(2),
            clk => clk,
            dbnc => dbnc3
        );
        U4: debouncer 
        port map (
            btn => btn(3),
            clk => clk,
            dbnc => dbnc4
        );
        U5: clock_div
        port map(
            clk => clk,
            div => div_i
        );
        U6: fancy_counter 
        port map(
            clk => clk,
            clk_en => div_i,
            dir => sw(0),
            en => dbnc2,
            ld => dbnc4,
            rst => dbnc1,
            updn => dbnc3,
            val => sw,
            cnt => led
        );
 

end Behavioral;
