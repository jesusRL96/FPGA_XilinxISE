----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:32:30 11/22/2017 
-- Design Name: 
-- Module Name:    mostrar - Behavioral 
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mostrar is
    Port ( sal :in  STD_LOGIC_vector(7 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0);
			  segOut: out std_logic_vector(6 downto 0);
           clk : in  STD_LOGIC);
end mostrar;

architecture Behavioral of mostrar is
signal sclk: std_logic_vector(17 downto 0);
signal seg: std_logic_vector (6 downto 0);
signal a: std_logic_vector(3 downto 0);
begin
process(clk,sclk,sal)
begin
if clk'event and clk = '1' then
				-- 0ms refersh digit 0
				if sclk = "000000000000000000" then
					an<="1110";
					segOut <= seg;
					sclk <= sclk +1;
				-- 1ms refresh digit 1
				elsif sclk = "011000011010100000" then
					-- display a 1 on the tenth digit if the number is greater than 9
					if sal< "00001001" then
						segOut <= "1000000";
						an <= "1101";
					elsif sal > "00001001" then 
						segOut <= "1111001";
						an<="1101";
						a<=a + 1;
					elsif sal > "00010011" and a="0001" then
					 segOut <= "0100100";
						an<="1101";
						a<=a + 1;
					sclk <= sclk +1;
					elsif sal > "00011101" and a="0010" then
					 segOut <= "0110000";
						an<="1101";
						a<=a + 1;
					sclk <= sclk +1;
					elsif sal > "00100111" and a="0011" then
					 segOut <= "0011001";
						an<="1101";
						a<=a + 1;
					sclk <= sclk +1;
					elsif sal > "00110001" and a="0100" then
					 segOut <= "0010010";
						an<="1101";
						a<=a + 1;
					sclk <= sclk +1;
					elsif sal > "01000101" and a="0101" then
					 segOut <= "0000010";
						an<="1101";
						a<=a + 1;
					sclk <= sclk +1;
					elsif sal > "01001111" and a="0111" then
					 segOut <= "1111000";
						an<="1101";
						a<=a + 1;
					sclk <= sclk +1;
					elsif sal > "01011001" and a="1000" then
					 segOut <= "0000000";
						an<="1101";
						a<=a + 1;
					sclk <= sclk +1;
					elsif sal > "01100011" and a="1001" then
					 segOut <= "0010000";
						an<="1101";
						a<=a + 1;
					sclk <= sclk +1;
					else 
					segOut <="1000000";
					an<="1101";
				   end if;
				--	2ms
				elsif sclk = "110000110101000000" then
					sclk <= "000000000000000000";
				else
					sclk <= sclk +1;
				end if;
					
end if;
	end process;
	
	 with sal select
		seg <=  	  "1000000" when "00000000", --0
					  "1111001" when "00000001", --1
					  "0100100" when "00000010", --2
					  "0110000" when "00000011", --3
					  "0011001" when "00000100", --4
					  "0010010" when "00000101", --5
					  "0000010" when "00000110", --6
					  "1111000" when "00000111", --7
					  "0000000" when "00001000", --8
					  "0010000" when "00001001", --9
					  "1000000" when "00001010", --10
					  "1111001" when "00001011", --11
					  "0100100" when "00001100", --12
					  "0110000" when "00001101", --13
					  "0011001" when "00001110", --14
					  "0010010" when "00001111", --15
					  "0000010" when "00010000", --16
					  "1111000" when "00010001", --17
					  "0000000" when "00010010", --18
					  "0010000" when "00010011", --19
					  "1000000" when "00010100", --20
					  "1111001" when "00010101", --21
					  "0100100" when "00010110", --22
					  "0110000" when "00010111", --23
					  "0011001" when "00011000", --24
					  "0010010" when "00011001", --25
					  "0000010" when "00011010", --26
					  "1111000" when "00011011", --27
					  "0000000" when "00011101", --29
					  "1000000" when "00011110", --30
					  "1111001" when "00011111", --31
					  "0100100" when "00100000", --32
					  "0110000" when "00100001", --33
					  "0011001" when "00100010", --34
					  "0010010" when "00100011", --35
					  "0000010" when "00100100", --36
					  "1111000" when "00100101", --37
					  "0000000" when "00100110", --38
					  "0010000" when "00100111", --39
					   "1000000" when "00101000", --40
					  "1111001" when "00101001", --41
					  "0100100" when "00101010", --42
					  "0110000" when "00101011", --43
					  "0011001" when "00101100", --44
					  "0010010" when "00101101", --45
					  "0000010" when "00101110", --46
					  "1111000" when "00101111", --47
					  "0000000" when "00110000", --48
					  "0010000" when "00110001", --49
					   "1000000" when "00110010", --50
					  "1111001" when "00110011", --51
					  "0100100" when "00110100", --52
					  "0110000" when "00110101", --53
					  "0011001" when "00110110", --54
					  "0010010" when "00110111", --55
					  "0000010" when "00111000", --56
					  "1111000" when "00111001", --57
					  "0000000" when "00111010", --58
					  "0010000" when "00111011", --59
					   "1000000" when "00111100", --60
					  "1111001" when "00111101", --61
					  "0100100" when "00111110", --62
					  "0110000" when "00111111", --63
					  "0011001" when "01000000", --64
					  "0010010" when "01000001",--65
					  "0000010" when "01000010", --66
					  "1111000" when "01000011", --67
					  "0000000" when "01000100", --68
					  "0010000" when "01000101", --69
					   "1000000" when "01000110", --70
					  "1111001" when "01000111", --71
					  "0100100" when "01001000", --72
					  "0110000" when "01001001", --73
					  "0011001" when "01001010", --74
					  "0010010" when "01001011", --75
					  "0000010" when "01001100", --76
					  "1111000" when "01001101", --77
					  "0000000" when "01001110", --78
					  "0010000" when "01001111", --79
					   "1000000" when "01010000", --80
					  "1111001" when "01010001", --81
					  "0100100" when "01010010", --82
					  "0110000" when "01010011", --83
					  "0011001" when "01010100", --84
					  "0010010" when "01010101", --85
					  "0000010" when "01010110", --86
					  "1111000" when "01010111", --87
					  "0000000" when "01011000", --88
					  "0010000" when "01011001", --89
					   "1000000" when "01011010", --90
					  "1111001" when "01011011", --91
					  "0100100" when "01011100", --92
					  "0110000" when "01011101", --93
					  "0011001" when "01011110", --94
					  "0010010" when "01011111", --95
					  "0000010" when "01100000", --96
					  "1111000" when "01100001", --97
					  "0000000" when "01100010", --98
					  "0010000" when "01100011", --99
					  "0111111" when others;
	

end Behavioral;

