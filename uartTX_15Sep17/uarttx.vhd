----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:40:29 09/15/2017 
-- Design Name: 
-- Module Name:    uarttx - Behavioral 
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

entity uarttx is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           tx_data : in  STD_LOGIC_VECTOR (7 downto 0);
           tdre : out  STD_LOGIC;
           txd : out  STD_LOGIC);
end uarttx;

architecture Behavioral of uarttx is
type state_type is (mark,start,delay,shift,stop);
signal state: state_type;
signal txbuff: std_logic_vector(7 downto 0);
signal baud_count: std_logic_vector(11 downto 0);
signal bit_count: std_logic_vector(3 downto 0);
constant bit_time: std_logic_vector(11 downto 0):=X"a28"; --25MHz/0.104ms
signal clkdiv: std_logic_vector(25 downto 0);
signal outp: std_logic;
begin
--uart_TX
process(clkdiv(0),clr,outp)
begin
	if clr ='1' then
		state<= mark;
		txbuff<="00000000";
		baud_count <= X"000";
		bit_count <= "0000";
		txd <= '1';
	elsif rising_edge(clkdiv(0)) then
		case state is
			when mark =>
				bit_count <= "0000";
				tdre <= '1';
				if outp = '0' then
					state <= mark;
					txbuff <= tx_data;
				else 
					baud_count <= X"000";
					state <= start;
				end if;
				
			when start =>
				baud_count <= X"000";
				txd <= '0';
				tdre <= '0';
				state <= delay;
				
			when delay =>
				tdre <= '0';
				if baud_count >= bit_time then
					baud_count <= X"000";
					if bit_count < "1000" then
						state <= shift;
					else 
						state <= stop;
					end if;
				else
					baud_count <= baud_count + 1;
					state <= delay;
				end if;
			
			when shift =>
				tdre <= '0';
				txd <= txbuff(0);
				txbuff(6 downto 0) <= txbuff(7 downto 1);
				bit_count <= bit_count + 1;
				state<= delay;
				
			when stop =>
				tdre <= '0';
				txd <= '1';
				if baud_count >= bit_time then		-- Para esperar 0.104 ms y no regresar al estado delay.
					baud_count <= X"000";
					state <= mark;
				else
					baud_count <= baud_count + 1;
					state <= stop;
				end if;
				
		end case;
	end if;
end process;

-- señal de reloj
process(clk)
begin
	if rising_edge(clk) then
		if clkdiv = "1011111010111100001000000" then
				clkdiv <= (others => '0');
		else
				clkdiv <= clkdiv + 1;
		end if;
	end if;
end process;	
	
-- dispara la màquina de estados
process(clkdiv)
begin
	if clkdiv <= "00000000000000000000000111" then
		outp <= '1';
	else
		outp <= '0';
	end if;
end process;


end Behavioral;

