----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:43:22 10/14/2017 
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

entity controlador is
    Port ( 
			  clk : in  STD_LOGIC;
			  rst : in  STD_LOGIC;
			  --datobin : in  STD_LOGIC_VECTOR (3 downto 0);
			  --Dreg_dclr : out  STD_LOGIC;
           Dreg_sum : out  STD_LOGIC;
			  Dreg_clr : out  STD_LOGIC;
           Dreg_ld : out  STD_LOGIC);
end controlador;

architecture Behavioral of controlador is
type estados is(inicio,guardar,espera,suma,borrar_suma);
signal presente,siguiente: estados;
begin
process(rst)
begin
	case presente is
	when inicio =>
		Dreg_clr<='1';
		Dreg_sum<='0';
		Dreg_ld<='0';
		siguiente<=espera;
	when guardar =>
		Dreg_clr<='0';
		Dreg_sum<='0';
		Dreg_ld<='1';
		siguiente<=espera;
	when espera =>
		Dreg_clr<='0';
		Dreg_sum<='0';
		Dreg_ld<='0';
		if rst='1' then
			siguiente<=borrar_suma;
		else
			siguiente<=suma;
		end if;
	when suma =>
		Dreg_clr<='0';
		Dreg_sum<='1';
		Dreg_ld<='0';
		siguiente<=guardar;
	when borrar_suma =>
		Dreg_clr<='1';
		Dreg_sum<='0';
		Dreg_ld<='0';
		siguiente<=guardar;
	end case;
end process;
---------------
process(clk,siguiente)
	begin
		if rising_edge(clk) then
			presente <= siguiente;
		end if;
	end process;
end Behavioral;


