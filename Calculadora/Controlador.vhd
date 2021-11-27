----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:33:24 09/09/2017 
-- Design Name: 
-- Module Name:    controlador - Behavioral 
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

entity controlador is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           sal : in STD_LOGIC_VECTOR (7 downto 0);
           a : out  STD_LOGIC;
           b : out  STD_LOGIC);
end controlador;

architecture Behavioral of controlador is
signal num: std_logic_vector(7 downto 0);
type estados is (inicio, sumar, guardar,espera2,limpiar);
signal presente,siguiente: estados;
begin	
process(presente,sal)
begin
case presente is
when inicio =>
num <= sal;
a<='0';
b<='0';
siguiente<= espera2;
when espera2 =>
a<='0';
b<='0';
if num = "01011010" then
siguiente <= sumar;
else 
siguiente <= guardar;
end if;
when guardar =>
b<='1';
a<='0';
num <= sal;
siguiente <=limpiar;
when sumar =>
a<= '1';
b<='0';
siguiente<=limpiar;
when limpiar =>
a<= '0';
num<="00000000";
b<= '0';
siguiente<= inicio;
end case;
	end process;

process(clk,siguiente)
	begin
		if rising_edge(clk) then
			presente <= siguiente;
		end if;
	end process;
end Behavioral;

