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
				
				
				sclk <= sclk+1;
			elsif sclk = "00001100001101011000" then  --50,008 
				
				
				
				
				sclk <= sclk+1;
			-- 2ms
			elsif sclk = "00011000011010100000" then	--100,000       
				
				
				sclk <= sclk+1;
			elsif sclk = "00011000011010101000" then	--100,008      
				
				
				sclk <= sclk+1;	
			--3ms
			elsif sclk = "00100100100111110000" then  --150000   
				
				sclk <= sclk+1;
			
			elsif sclk = "00100100100111111000" then   --150,008   
				
				
				
				sclk <= sclk+1;
			--4ms
			elsif sclk = "00110000110101000000" then 		--200,000    	
				
				sclk <= sclk+1;
			
			elsif sclk = "00110000110101001000" then     --200,008    
			
				sclk <= "00000000000000000000";	  
			else
				sclk <= sclk+1;	
			end if;
		end if;
	end process;
		
		
						 
end Behavioral;

