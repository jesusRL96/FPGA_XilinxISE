----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:16:21 10/14/2017 
-- Design Name: 
-- Module Name:    asciianum - Behavioral 
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

entity asciianum is
    Port ( enthex : in  STD_LOGIC_VECTOR (7 downto 0);
           salbin : out  STD_LOGIC_VECTOR (3 downto 0));
end asciianum;

architecture Behavioral of asciianum is

begin
process(enthex)
begin
case enthex is
	when "01110000" => salbin <= "0000"; --0
	when "01101001" => salbin <= "0001"; --1
	when "01110010" => salbin <= "0010"; --2
	when "01111010" => salbin <= "0011"; --3
	when "01101011" => salbin <= "0100"; --4
	when "01110011" => salbin <= "0101"; --5
	when "01110100" => salbin <= "0110"; --6
	when "01101100" => salbin <= "0111"; --7
	when "01110101" => salbin <= "1000"; --8
	when "01111101" => salbin <= "1001"; --9
	when "01011010" => salbin <= "1010"; --enter
when others =>salbin <="1011"; 			 --otro
end case;
end procesS;

end Behavioral;

