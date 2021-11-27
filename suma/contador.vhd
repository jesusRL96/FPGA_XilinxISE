----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:46:50 10/14/2017 
-- Design Name: 
-- Module Name:    contador - Behavioral 
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

entity contador is
    Port ( clk_disp : in  STD_LOGIC;
           selec : INout  STD_LOGIC_VECTOR(0 DOWNTO 0));
end contador;

architecture Behavioral of contador is

begin
process(clk_disp)
	 begin
	 if rising_edge(clk_disp) then
	 selec <= selec + 1;
	 end if;
end process;
end Behavioral;

