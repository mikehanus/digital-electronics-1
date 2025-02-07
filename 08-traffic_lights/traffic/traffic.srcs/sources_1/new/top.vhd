----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.03.2023 09:32:35
-- Design Name: 
-- Module Name: top - Behavioral
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

entity top is
    Port ( CLK100MHZ : in STD_LOGIC;
           LED16_R : out STD_LOGIC;
           LED16_G : out STD_LOGIC;
           LED16_B : out STD_LOGIC;
           LED17_R : out STD_LOGIC;
           LED17_G : out STD_LOGIC;
           LED17_B : out STD_LOGIC;
           BTNC : in STD_LOGIC);
end top;

architecture behavioral of top is

begin
    ------------------------------------------------------
    -- Instance (copy) of tlc entity
    tlc : entity work.tlc
        port map(
            clk => CLK100MHZ,
            rst => BTNC,
            south(2) => LED16_R,
            south(1) => LED16_G,
            south(0) => LED16_B,
            west(2) => LED17_R,
            west(1) => LED17_G,
            west(0) => LED17_B
        );

end architecture behavioral;