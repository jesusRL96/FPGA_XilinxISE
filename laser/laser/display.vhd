----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:26:19 10/12/2017 
-- Design Name: 
-- Module Name:    display - Behavioral 
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
entity display is
    Port ( bin_ent : in  STD_LOGIC_VECTOR (3 downto 0);
           disp : out  STD_LOGIC_VECTOR (6 downto 0));
end display;
architecture Behavioral of display is
begin
process(bin_ent)
begin
case bin_ent is
	when "0000" => disp <= "0000001";--0
	when "0001" => disp <= "1001111";--1
	when "0010" => disp <= "0010010";--2
	when "0011" => disp <= "0000110";--3
	when "0100" => disp <= "1001100";--4
	when "0101" => disp <= "0100100";--5
	when "0110" => disp <= "0100000";--6
	when "0111" => disp <= "0001111";--7
	when "1000" => disp <= "0000000";--8
	when "1001" => disp <= "0000100";--9
	when "1010" => disp <= "0001000";--10
	when "1011" => disp <= "1100000";--11
	when "1100" => disp <= "0110001";--12
	when "1101" => disp <= "1000010";--13
	when "1110" => disp <= "0110000";--14
	when "1111" => disp <= "0111000";--15
	when others => disp <= "1111111";
end case;
end process;

end Behavioral;

