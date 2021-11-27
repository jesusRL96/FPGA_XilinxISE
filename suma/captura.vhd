----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:07:01 10/14/2017 
-- Design Name: 
-- Module Name:    captura - Behavioral 
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
use IEEE.STD_LOGIC_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity captura is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
			  rst2 : in  STD_LOGIC;
			  dato : in  STD_LOGIC;
           salidaHex : out  STD_LOGIC_VECTOR (7 downto 0));
end captura;

architecture Behavioral of captura is

signal reg: std_logic_vector(21 downto 0);
signal tmp: std_logic_vector(4 downto 0);  -- tmp: temporal

begin
	-- Registro de Corrimiento Serial a Paralelo
	process(clk, rst, dato, reg,rst2)
		begin
		if rst='1' or rst2='1' then
			reg <= (others => '0');
		elsif falling_edge(clk) then
			reg <= dato & reg(21 downto 1);	
		end if;
	end process;

	-- Contador de Bits
	process(clk, rst, tmp)
		begin
		if rst='1' OR tmp="10110" then
			tmp <= "00000";
		elsif rising_edge(clk) then
			tmp <= tmp + 1;
		end if;
	end process;
	
	-- Obtener el còdigo de la tecla
	process(rst, reg, tmp)
		begin
		if rst='1' or rst2='1' then
			salidaHex <= "00000000";
		--elsif tmp="10110" then		-- La comentamos para que no genere errores
			
		elsif reg(8 downto 1)= X"F0" then
			salidaHex <= reg(19 downto 12);
		
		else
			salidaHex <= "00000000";
		end if;
	end process;

end Behavioral;



