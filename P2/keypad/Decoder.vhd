----------------------------------------------------------------------------------
-- Company: Digilent Inc 2011
-- Engineer: Michelle Yu  
-- Create Date:      17:18:24 08/23/2011 
--
-- Module Name:    Decoder - Behavioral 
-- Project Name:  PmodKYPD
-- Target Devices: Nexys3
-- Tool versions: Xilinx ISE 13.2
-- Description: 
--	This file defines a component Decoder for the demo project PmodKYPD. 
-- The Decoder scans each column by asserting a low to the pin corresponding to the column 
-- at 1KHz. After a column is asserted low, each row pin is checked. 
-- When a row pin is detected to be low, the key that was pressed could be determined.
--
-- Revision: 
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Decoder is
    Port (clk : in  STD_LOGIC;
          Row : in  STD_LOGIC_VECTOR (3 downto 0);
			 Col : out  STD_LOGIC_VECTOR (3 downto 0);
          DecodeOut : out  STD_LOGIC_VECTOR (3 downto 0));
end Decoder;

architecture Behavioral of Decoder is

signal sclk :STD_LOGIC_VECTOR(19 downto 0);
begin
	process(clk)
		begin 
		if clk'event and clk = '1' then
			
			-- 1ms
			if sclk = "00001100001101010000" then --50,000 
				-- C1
				Col <= "0111";
				
				sclk <= sclk+1;
			elsif sclk = "00001100001101011000" then  --50,008 
				--R1
				if Row="0111" then
					DecodeOut <= "0001"; --1
				elsif Row="1011" then
					DecodeOut <= "0100"; --4
				elsif Row="1101" then
					DecodeOut <= "0111"; --7
				elsif Row="1110" then
					DecodeOut <= "0000"; --0
				end if;
				
				sclk <= sclk+1;
				
				
			-- 2ms			
			elsif sclk = "00011000011010100000" then	--100,000       
				-- C2
				Col <= "1011";
				
				sclk <= sclk+1;
				
			elsif sclk = "00011000011010101000" then	--100,008
				--R2
				if Row="0111" then
					DecodeOut <= "0010"; --2
				elsif Row="1011" then
					DecodeOut <= "0101"; --5
				elsif Row="1101" then
					DecodeOut <= "1000"; --8
				elsif Row="1110" then
					DecodeOut <= "1111"; --F
				end if;
				
				sclk <= sclk+1;	
				
				
			--3ms
			elsif sclk = "00100100100111110000" then  --150000   
				-- C3
				Col <= "1101";
								
				sclk <= sclk+1;
			
			elsif sclk = "00100100100111111000" then   --150,008   
				--R3
				if Row="0111" then
					DecodeOut <= "0011"; --3
				elsif Row="1011" then
					DecodeOut <= "0110"; --6
				elsif Row="1101" then
					DecodeOut <= "1001"; --9
				elsif Row="1110" then
					DecodeOut <= "1110"; --E
				end if;
				
				sclk <= sclk+1;
				
				
			--4ms
			elsif sclk = "00110000110101000000" then 		--200,000    	
				-- C4
				Col <= "1110";
				sclk <= sclk+1;
			
			elsif sclk = "00110000110101001000" then     --200,008    
				
				--R4
				if Row="0111" then
					DecodeOut <= "1010"; --A
				elsif Row="1011" then
					DecodeOut <= "1011"; --B
				elsif Row="1101" then
					DecodeOut <= "1100"; --C
				elsif Row="1110" then
					DecodeOut <= "1101"; --D
				end if;
				
				sclk <= "00000000000000000000";	  
			else
				sclk <= sclk+1;	
			end if;
		end if;
	end process;
		
		
						 
end Behavioral;

