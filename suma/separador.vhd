----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:43:35 10/14/2017 
-- Design Name: 
-- Module Name:    separador - Behavioral 
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

entity separador is
    Port ( sel : in  STD_LOGIC_VECTOR(0 DOWNTO 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0);
           salida : out  STD_LOGIC_VECTOR (3 downto 0);
           entbin : in  STD_LOGIC_VECTOR (7 downto 0));
end separador;

architecture Behavioral of separador is

begin
process(sel)
	begin
	if sel="1" then
	salida <= entbin(3 downto 0);
	an <= "1110";
	else
	salida <= entbin(7 downto 4);
	an <= "1101";
	end if;
end process;
end Behavioral;

