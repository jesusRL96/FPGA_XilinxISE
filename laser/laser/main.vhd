----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:11:35 09/24/2017 
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
    Port ( Bp : in  STD_LOGIC;
           Sp : in  STD_LOGIC;
           Lp : out  STD_LOGIC;
			  an : out  STD_LOGIC_VECTOR (3 downto 0);
			  display : out  STD_LOGIC_VECTOR (6 downto 0);
           clk_p : in  STD_LOGIC);
end main;

architecture Behavioral of main is
signal auxDreg_clr,auxDreg_ld,auxDctr_clr,auxDctr_cnt,auxclk,auxclkdisp: std_logic;
signal auxsel: std_logic_vector(1 downto 0);
signal auxD: std_logic_vector(15 downto 0);
signal auxsalida: std_logic_vector(3 downto 0);
begin
u1: controlador port map(B=>Bp,clk_c=>auxclk,L=>Lp,S=>Sp,Dreg_clr=>auxDreg_clr,Dreg_ld=>auxDreg_ld,Dctr_clr=>auxDctr_clr,Dctr_cnt=>auxDctr_cnt);
u2: divisor port map(clk=>clk_p,clk_sal=>auxclk,clk_sal_display=>auxclkdisp);
u3: Datapath port map(Dreg_clr=>auxDreg_clr,Dreg_ld=>auxDreg_ld,Dctr_clr=>auxDctr_clr,Dctr_cnt=>auxDctr_cnt,clk_d=>auxclk,D=>auxD);
u4: contador port map(clk_disp=>auxclkdisp,selec=>auxsel);
u5: separador port map(ent=>auxD,sel=>auxsel,an=>an,salida=>auxsalida);
u6: display port map(bin_ent=>auxsalida,disp=>display);
end Behavioral;

