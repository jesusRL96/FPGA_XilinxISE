----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:45:02 10/12/2017 
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
    Port ( ent : in  STD_LOGIC_VECTOR (15 downto 0);
			  sel : in  STD_LOGIC_VECTOR (1 downto 0);
			  an : out  STD_LOGIC_VECTOR (3 downto 0);
			  salida : out  STD_LOGIC_VECTOR (3 downto 0));
end separador;
architecture Behavioral of separador is

begin
process(sel)
	begin
	if sel="00" then
	salida <= ent(3 downto 0);
	an <= "1110";
	elsif sel="01" then
	salida <= ent(7 downto 4);
	an <= "1101";
	elsif sel="10" then
	salida <= ent(11 downto 8);
	an <= "1011";
	else 
	salida <= ent(15 downto 12);
	an <= "0111";
	end if;
end process;
end Behavioral;

