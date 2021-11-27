----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:24:48 10/14/2017 
-- Design Name: 
-- Module Name:    datapath - Behavioral 
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

entity datapath is
    Port ( clk : in  STD_LOGIC;
           datobin : in  STD_LOGIC_VECTOR (3 downto 0);
           Dreg_sum : in  STD_LOGIC;
           Dreg_clr : in  STD_LOGIC;
           Dreg_ld : in  STD_LOGIC;
			  rst2 : out  STD_LOGIC;
           salidasuma : inout  STD_LOGIC_VECTOR (7 downto 0));
end datapath;

architecture Behavioral of datapath is
signal val:std_logic;
signal reg1: std_logic_vector(3 downto 0);
begin
----------
process(Dreg_ld,datobin,clk,Dreg_clr,Dreg_sum)
begin	
	if rising_edge(clk) then
		if (Dreg_ld='1')and(datobin<"1010") then
			reg1<=datobin;
			rst2<='0';
		-----
		elsif Dreg_clr='1' then
			salidasuma<="00000000";
			rst2<='0';
		-----
		elsif (Dreg_sum='1')and(datobin="1010") then
			salidasuma<=salidasuma+reg1;
			rst2<='1';
		-----
		else
			salidasuma<=salidasuma;
			rst2<='0';
	   end if;
	end if;
end process;
----------
end Behavioral;

