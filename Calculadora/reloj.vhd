----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:36:56 11/03/2017 
-- Design Name: 
-- Module Name:    reloj - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;1

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reloj is
    Port ( clk : in  STD_LOGIC;
           clksal : out  STD_LOGIC);
end reloj;

architecture Behavioral of reloj is
signal q:std_logic_vector(24 downto 0);
begin
process(clk)
if rising_edge(clk) then
q <= q + 1;
end process;
clksal<=q(25);
end Behavioral;

