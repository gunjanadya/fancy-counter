----------------------------------------------------------------------------------
-- Company: Rutgers 
-- Engineer: Gunjan Adya
-- 
-- Create Date: 02/16/2024 03:53:23 PM
-- Design Name: 
-- Module Name: divider_top - Behavioral
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

entity divider_top is
    port (
      clk  : in std_logic;
      led0 : out std_logic
    );
end divider_top;

architecture behavioral of divider_top is

    component clock_div is
        port (
          clk : in std_logic;
          div : out std_logic
        );
    end component;
    
    signal led_i : std_logic;
    signal div   : std_logic;
    
    begin
        U1: clock_div
        port map(
            clk => clk,
            div => div
        );
    
   process(clk)
   begin
       if(rising_edge(clk)) then
           if div='1' then
               led_i <= not led_i;
           end if;
       end if;
   end process;
   led0 <= led_i;     
    
end behavioral;
