----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Gunjan Adya
-- 
-- Create Date: 02/21/2024 01:21:22 PM
-- Design Name: 
-- Module Name: debouncer - Behavioral
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

entity debouncer is
  Port ( 
      btn  : in std_logic;
      clk  : in std_logic;
      dbnc : out std_logic
  );
end debouncer;

architecture Behavioral of debouncer is

begin


end Behavioral;
