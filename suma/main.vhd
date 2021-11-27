----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:02:07 10/14/2017 
-- Design Name: 
-- Module Name:    main - Behavioral 
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
use work.costal.all;
entity main is
    Port ( dato : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  clk2 : in  STD_LOGIC;
			  leds : out  STD_LOGIC_VECTOR (7 downto 0);
           display : out  STD_LOGIC_VECTOR (6 downto 0);
           rst : in  STD_LOGIC;
           an : out  STD_LOGIC_VECTOR (3 downto 0));
end main;

architecture Behavioral of main is
signal auxDreg_clr,auxDreg_ld,auxDreg_sum,auxclk,auxclkdisp,auxrst2: std_logic;
signal auxsel: std_logic_vector(0 downto 0);
signal auxsalida: std_logic_vector(3 downto 0);
signal auxsalidahex: std_logic_vector(7 downto 0);
signal aux_suma: std_logic_vector(7 downto 0);
signal auxdatobin: std_logic_vector(3 downto 0);
begin
leds<=aux_suma;
u1: divisor port map(clk=>clk,clk_sal=>auxclk,clk_sal_display=>auxclkdisp);
u2: captura port map(clk=>clk2,rst=>rst,dato=>dato,salidaHex=>auxsalidahex,rst2=>auxrst2);
u3: asciianum port map(enthex=>auxsalidahex,salbin=>auxdatobin);
u4: controlador port map(rst=>rst,clk=>auxclk,Dreg_clr=>auxDreg_clr,Dreg_sum=>auxDreg_sum,Dreg_ld=>auxDreg_ld);
u5: datapath port map(datobin=>auxdatobin,Dreg_clr=>auxDreg_clr,Dreg_ld=>auxDreg_ld,Dreg_sum=>auxDreg_sum,clk=>auxclk,
							salidasuma=>aux_suma,rst2=>auxrst2);
u6: contador port map(clk_disp=>auxclkdisp,selec=>auxsel);
u7: separador port map(entbin=>aux_suma,sel=>auxsel,an=>an,salida=>auxsalida);
u8: display port map(bin_ent=>auxsalida,disp=>display);
end Behavioral;

