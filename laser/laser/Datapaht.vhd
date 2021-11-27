----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:50:56 09/24/2017 
-- Design Name: 
-- Module Name:    Datapaht - Behavioral 
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

entity Datapath is
    Port ( clk_d : in  STD_LOGIC;
           Dreg_clr : in  STD_LOGIC;
           Dreg_ld : in  STD_LOGIC;
           Dctr_cnt : in  STD_LOGIC;
           Dctr_clr : in  STD_LOGIC;
           D : out  STD_LOGIC_VECTOR (15 downto 0));
end Datapath;

architecture Behavioral of Datapath is
signal Dctr:std_logic_vector(15 downto 0);
constant Dctr0: std_logic_vector(0 downto 0):="0";
begin
	process(Dreg_clr,Dreg_ld,Dctr_cnt,Dctr_clr,clk_d)
	begin
		if rising_edge(clk_d) then
			if Dreg_clr='1' then
				D<=(others => '0');
			elsif Dreg_ld='1' then
				D<=Dctr0&Dctr(15 downto 1);
			elsif Dctr_cnt='1' then
				Dctr<=Dctr+1;
			elsif (Dctr_clr='1') then
				Dctr<="0000000000000000";
			else
				Dctr<=Dctr;
			end if;
		end if;
	end process;

end Behavioral;

