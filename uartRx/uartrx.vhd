----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:28:58 09/15/2017 
-- Design Name: 
-- Module Name:    uartrx - Behavioral 
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


entity uartrx is
    Port ( clk : in  STD_LOGIC;
           rxd : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           rdrf_clr : in  STD_LOGIC;
           rdrf : out  STD_LOGIC;
           fe : out  STD_LOGIC;
           rx_data : out  STD_LOGIC_VECTOR (7 downto 0));
end uartrx;

architecture Behavioral of uartrx is
type state_type is (nicole,start,delay,shift,stop);
signal state:state_type;
signal rxbuff:std_logic_vector(7 downto 0);
signal baud_count:std_logic_vector(11 downto 0);
signal bit_count:std_logic_vector(3 downto 0);
constant bit_time:std_logic_vector(11 downto 0):=X"a28";
constant half_bit_time:std_logic_vector(11 downto 0):=X"514";
signal clkdiv:std_logic_vector(0 downto 0);
begin
	process(clkdiv(0),clr,rdrf_clr)
	begin
		if clr='1' then
		state<= nicole;
		rxbuff<="00000000";
		baud_count<=X"000";
		bit_count<="0000";
		rdrf<='0';
		fe<='0';
		elsif rdrf_clr='1' then
		rdrf<='0';
		elsif rising_edge(clkdiv(0)) then
		case state is
			when nicole=>
				baud_count<=X"000";
				bit_count<="0000";
				if rxd='1' then
				state<=nicole;
				else 
				state<=start;
				fe<='0';
				end if;
			when start =>
				if baud_count>=half_bit_time then
				baud_count<=X"000";
				state<=delay;
				else
				baud_count<=baud_count+1;	
				state<=start;
				end if;
			when delay=>
			if baud_count>= bit_time then
			baud_count<=X"000";
				if bit_count<"1000" then
				state <=shift;
				else 
				state<=stop;
				end if;
			else
			baud_count<=baud_count+1;
			state<=delay;
			end if;
			
			when shift =>
				rxbuff(7) <= rxd;
				rxbuff(6 downto 0) <= rxbuff(7 downto 1);
				bit_count <= bit_count + 1;
				state <= delay;
				
			when stop =>
				rdrf <= '1';
				if rxd = '0' then
					fe <= '1';
				else
					fe <= '0';
				end if;
				state <= nicole;
			
				
		end case;
	
		end if;
end process;
process (clk)
begin
if rising_edge(clk) then
clkdiv <= clkdiv + 1;
end if;
end process;
rx_data<=rxbuff;
end Behavioral;


































