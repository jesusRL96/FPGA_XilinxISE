----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:40:32 09/06/2017 
-- Design Name: 
-- Module Name:    comparador - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity comparador is
    Port ( dato : inout  STD_LOGIC_VECTOR(7 DOWNTO 0);
           sal : out  STD_LOGIC_vector(7 downto 0));
end comparador;

architecture Behavioral of comparador is

begin
process(dato)
BEGIN
case dato is
when "01110000" => sal <= "00000000";
when "01101001" => sal <= "00000001";
when "01110010" => sal <= "00000010";
when "01111010" => sal <= "00000011";
when "01101011" => sal <= "00000100";
when "01110011" => sal <= "00000101";
when "01110100" => sal <= "00000110";
when "01101100" => sal <= "00000111";
when "01110101" => sal <= "00001000";
when "01111101" => sal <= "00001001";
when "01011010" => sal <= "01011010";
WHEN OTHERS =>sal <="00000000";
end case;
end procesS;
end Behavioral;

