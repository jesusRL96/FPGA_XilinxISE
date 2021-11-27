----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:04:00 09/09/2017 
-- Design Name: 
-- Module Name:    teclado - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity teclado is
    Port ( clk : in  STD_LOGIC;
           dato : in  STD_LOGIC;
           rst : in  STD_LOGIC;				--	rst: reset
           leds : out  STD_LOGIC_VECTOR (7 downto 0));
end teclado;

architecture Behavioral of teclado is
	signal reg: std_logic_vector(21 downto 0);
	signal tmp: std_logic_vector(4 downto 0);  -- tmp: temporal

begin
	-- Registro de Corrimiento Serial a Paralelo
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
			leds <= "00000000";
		--elsif tmp="10110" then		-- La comentamos para que no genere errores
			
		elsif reg(8 downto 1)= X"F0" then
			leds <= reg(19 downto 12);
		
		else
			leds <= "00000000";
		end if;
	end process;

end Behavioral;

