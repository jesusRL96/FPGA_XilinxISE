----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:50:11 09/09/2017 
-- Design Name: 
-- Module Name:    convertidor - Behavioral 
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

entity convertidor is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           sal : out  STD_LOGIC_VECTOR (7 downto 0);
           dato : in  STD_LOGIC);
end convertidor;

architecture Behavioral of convertidor is
signal reg: std_logic_vector(21 downto 0);
signal tmp: std_logic_vector(4 downto 0);
begin
process(clk, rst, dato, reg)
		begin
		if rst='1' then
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
		if rst='1' then
			sal <= "00000000";
		--elsif tmp="10110" then		-- La comentamos para que no genere errores
			
		elsif reg(8 downto 1)= X"F0" then
			sal <= reg(19 downto 12);
		else
			sal <= "00000000";
		end if;
	end process; 



end Behavioral;

