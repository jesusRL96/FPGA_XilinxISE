----------------------------------------------------------------------------------
-- Company: Digilent Inc 2011
-- Engineer: Michelle Yu  
-- Create Date: 13:28:41 08/18/2011 
--
-- Module Name:    DisplayController - Behavioral 
-- Project Name: 	 PmodENC
-- Target Devices: Nexys 3 
-- Tool versions: Xilinx ISE Design Suite 13.2
--
-- Description: 
-- This module defines a DisplayController that controls the seven segment display to work with 
-- the output of the Encoder
--
-- Revision: 
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity DisplayController is
    Port ( 
			  clk : in std_logic;
			  --signal from the Pmod
			  SWT: in std_logic;
			  --output from the Encoder
			  DispVal : in  STD_LOGIC_VECTOR (4 downto 0);
			  --controls the display digits
			  anode: out std_logic_vector(3 downto 0);
			  --controls which digit to display
           segOut : out  STD_LOGIC_VECTOR (6 downto 0)); 
end DisplayController;

architecture Behavioral of DisplayController is
signal sclk: std_logic_vector (17 downto 0);
signal seg: std_logic_vector (6 downto 0);
begin
	 process(clk, SWT)
		begin 
			--turns off the seven segment display when the switch is off
			--or else turn on the seven segment display
			if (SWT = '0') then
				anode<="1111";
			--refresh each digit
			elsif clk'event and clk = '1' then
				-- 0ms refersh digit 0
				if sclk = "000000000000000000" then
					anode<="1110";
					segOut <= seg;
					sclk <= sclk +1;
				-- 1ms refresh digit 1
				elsif sclk = "011000011010100000" then
					-- display a 1 on the tenth digit if the number is greater than 9
					if DispVal > "01001" then 
						segOut <= "1111001";
						anode<="1101";
					end if;
					sclk <= sclk +1;
				--	2ms
				elsif sclk = "110000110101000000" then
					sclk <= "000000000000000000";
				else
					sclk <= sclk +1;
				end if;
					
			end if;
	end process;
	
	 with DispVal select
		seg <=  	  "1000000" when "00000", --0
					  "1111001" when "00001", --1
					  "0100100" when "00010", --2
					  "0110000" when "00011", --3
					  "0011001" when "00100", --4
					  "0010010" when "00101", --5
					  "0000010" when "00110", --6
					  "1111000" when "00111", --7
					  "0000000" when "01000", --8
					  "0010000" when "01001", --9
					  "1000000" when "01010", --10
					  "1111001" when "01011", --11
					  "0100100" when "01100", --12
					  "0110000" when "01101", --13
					  "0011001" when "01110", --14
					  "0010010" when "01111", --15
					  "0000010" when "10000", --16
					  "1111000" when "10001", --17
					  "0000000" when "10010", --18
					  "0010000" when "10011", --19
					  "0111111" when others;
	
end Behavioral;

