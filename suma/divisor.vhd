----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:20:18 10/14/2017 
-- Design Name: 
-- Module Name:    divisor - Behavioral 
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

entity divisor is
    Port ( clk : in  STD_LOGIC;
		     clk_sal : out  STD_LOGIC;
           clk_sal_display : out  STD_LOGIC);
end divisor;

architecture Behavioral of divisor is
signal q:std_logic_vector(30 downto 0);
begin
	process(clk)
	begin
		if rising_edge(clk) then
			q<=q+1;
		end if;
	end process;
clk_sal<=q(20);
clk_sal_display<=q(9);
end Behavioral;

