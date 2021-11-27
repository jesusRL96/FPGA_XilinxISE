----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:42:46 09/24/2017 
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

entity divisor is
    Port ( clk : in  STD_LOGIC;
			  clk_sal_display: out  STD_LOGIC;	
           clk_sal : out  STD_LOGIC);
			  
end divisor;

architecture Behavioral of divisor is
signal q:std_logic_vector(25 downto 0);
begin
	process(clk)
	begin
		if rising_edge(clk) then
			q<=q+1;
		end if;
	end process;
clk_sal<=q(4);
clk_sal_display<=q(9);
end Behavioral;

