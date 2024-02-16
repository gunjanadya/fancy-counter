----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Gunjan Adya
-- 
-- Create Date: 02/08/2024 08:24:05 PM
-- Design Name: 
-- Module Name: clock_div_tb - Behavioral
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
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clock_div_tb is
--  Port ( );
end clock_div_tb;

architecture Behavioral of clock_div_tb is

    signal tb_clk : std_logic := '0';
    signal tb_cnt : std_logic := '0';



    component clock_div is
        port(
        
            clk  : in std_logic;        -- 125 Mhz clock
            cnt  : out std_logic
        
        );
    end component ;

begin

    clk_gen_proc: process
    begin

        wait for 4 ns;
        tb_clk <= '1';
        
        wait for 4 ns;
        tb_clk <= '0';

    end process clk_gen_proc;
dut : clock_div
port map (
    clk  => tb_clk,
    cnt => tb_cnt
);

end Behavioral;
