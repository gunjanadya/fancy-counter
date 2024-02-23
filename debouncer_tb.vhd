----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/22/2024 06:19:07 PM
-- Design Name: 
-- Module Name: debouncer_tb - Behavioral
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

entity debouncer_tb is
--  Port ( );
end debouncer_tb;

architecture Behavioral of debouncer_tb is

      signal btn_tb  : std_logic := '0';
      signal clk_tb  : std_logic := '0';
      signal dbnc_tb : std_logic := '0';


    component debouncer is
        port(
        
          btn  : in std_logic;
          clk  : in std_logic;
          dbnc : out std_logic
        
        );
    end component ;

begin


    -- simulate a 125 Mhz clock
    clk_gen_proc: process
    begin
    
        wait for 4 ns;
        clk_tb <= '1';
        
        wait for 4 ns;
        clk_tb <= '0';
    
    end process clk_gen_proc;
    
    debounce: process 
    begin
        wait for 4ns;
        btn_tb <= '1';
    end process debounce;
    
    dut: debouncer
    port map (
        btn => btn_tb,
        clk => clk_tb,
        dbnc => dbnc_tb
    );
end Behavioral;
