----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:40:36 09/01/2017 
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
    Port ( mc : in  STD_LOGIC;
           md : out  STD_LOGIC;
           reset : in  STD_LOGIC;
           mclk : in  STD_LOGIC;
           acu : out  STD_LOGIC_VECTOR (3 downto 0);
           ma : in  STD_LOGIC_VECTOR (7 downto 0);
           clksal : out  STD_LOGIC);
end main;

architecture Behavioral of main is
signal auxld,auxclr,auxlt,auxclk: std_logic;
signal auxsal,auxsuma,auxms:std_logic_vector(7 downto 0);
begin
	clksal <= auxclk;
	acu <= auxsal(3 downto 0);
	--precio refresco
	auxms <= "00001111";
--bloque registro tot
u1: tot port map(load=>auxld,clr=>auxclr,ent=>auxsuma,sal=>auxsal,clk=>auxclk);
--bloque registro comparador
u2: comparador8 port map(a=>auxsal,b=>auxms,c=>auxlt);
--bloque registro sumador
u3: sumador8 port map(a=>auxsal,b=>ma,suma=>auxsuma);
--bloque registro controlador
u4: controlador port map(c=>mc,d=>md,tot_ld=>auxld,tot_clr=>auxclr,tot_s=>auxlt,clk=>auxclk);
--bloque registro divisor
u5: divisor port map(clk=>mclk,rst=>reset,clksal=>auxclk);
end Behavioral;

