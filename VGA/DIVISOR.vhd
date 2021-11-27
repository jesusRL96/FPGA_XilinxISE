----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:23:05 09/29/2017 
-- Design Name: 
-- Module Name:    clkdiv - Behavioral 
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
use IEEE.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DIVISOR is
    Port ( clr : in  STD_LOGIC;
           clk25 : out  STD_LOGIC;
           mclk : in  STD_LOGIC);
end DIVISOR;

architecture Behavioral of DIVISOR is
signal q:std_logic_vector(0 downto 0);
begin
process(mclk,clr)
begin
	if clr = '1' then
		q <= "0";
	elsif rising_edge(mclk) then
		q <= q + 1;
	end if;
end process;
clk25 <= q(0);
end Behavioral;

