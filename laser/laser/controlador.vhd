----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:08:11 09/24/2017 
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
    Port ( B : in  STD_LOGIC;
           clk_c : in  STD_LOGIC;
           Dreg_clr : out  STD_LOGIC;
           Dreg_ld : out  STD_LOGIC;
           Dctr_clr : out  STD_LOGIC;
           Dctr_cnt : out  STD_LOGIC;
           L : out  STD_LOGIC;
           S : in  STD_LOGIC);
end controlador;

architecture Behavioral of controlador is
type estados is(inicio,espera,laserON,Cuenta,Medida);
signal presente,siguiente: estados;
begin
	process(B,S)
	begin
		case presente is
			when inicio =>
				L<='0';
				Dreg_clr<='1';
				Dreg_ld<='0';
				Dctr_clr<='0';
				Dctr_cnt<='0';
				siguiente<=espera;
			when espera =>
				L<='0';
				Dreg_clr<='0';
				Dreg_ld<='0';
				Dctr_clr<='1';
				Dctr_cnt<='0';
				if B='1' then
					Dreg_clr<='1';
					Dctr_clr<='1';
					siguiente<=laserON;
				else
					siguiente<=espera;
				end if;
			when laserON =>
				L<='1';
				Dreg_clr<='0';			---
				Dreg_ld<='0';
				Dctr_clr<='0';
				Dctr_cnt<='0';
				siguiente<=Cuenta;
			when Cuenta=>
				L<='1';					---
				Dreg_clr<='0';
				Dreg_ld<='0';
				Dctr_clr<='0';
				Dctr_cnt<='1';
				if S='1' then
					siguiente<=Medida;
				else
					siguiente<=Cuenta;
				end if;
			when Medida =>
				L<='0';
				Dreg_clr<='0';
				Dreg_ld<='1';
				Dctr_clr<='0';
				Dctr_cnt<='0';
				siguiente<=espera;
		end case;
	end process;
	
	process(clk_c,siguiente)
	begin
		if rising_edge(clk_c) then
			presente<=siguiente;
		end if;
	end process;
end Behavioral;

