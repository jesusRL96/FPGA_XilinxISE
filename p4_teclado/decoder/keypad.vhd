----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:41:15 09/09/2017 
-- Design Name: 
-- Module Name:    keypad - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity keypad is
    Port ( row : in  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
           col : out  STD_LOGIC_VECTOR (3 downto 0);
           reg : inout  STD_LOGIC_VECTOR (3 downto 0));
end keypad;

architecture Behavioral of keypad is
signal clkdiv: std_logic_vector(19 downto 0);
type estados is(ini,c1,c2,c3,c4,tc1,tc2,tc3,tc4,conteo);
signal presente,siguiente: estados;
begin
	--maquina de estados
	process(presente,row)
	begin
	case presente is
		when ini=> 
		col<="1111";
		siguiente<=c1;
		when c1 =>
			col <= "0111"; -- escanea columna 1
		if row="1111" then
		siguiente<=c2;
		else
		siguiente<=tc1;
		end if;
		when tc1 =>
			col <= "0111"; -- escanea columna 1
			if row="1111" then
		siguiente<=conteo;
		else
		siguiente<=tc1;
		end if;
		when c2 =>
			col <= "1011"; -- escanea columna 2
		if row="1111" then
		siguiente<=c3;
		else
		siguiente<=tc2;
		end if;
		when tc2 =>
			col <= "1011"; -- escanea columna 2
			if row="1111" then
		siguiente<=conteo;
		else
		siguiente<=tc2;
		end if;
		when c3 =>
			col <= "1101"; -- escanea columna 3
		if row="1111" then
		siguiente<=c3;
		else
		siguiente<=tc3;
		end if;
		when tc3 =>
			col <= "1101"; -- escanea columna 3
			if row="1111" then
		siguiente<=conteo;
		else
		siguiente<=tc3;
		end if;
		when c4 =>
			col <= "1110"; -- escanea columna 4
		if row="1111" then
		siguiente<=ini;
		else
		siguiente<=tc4;
		end if;
		when tc4 =>
			col <= "1110"; -- escanea columna 4
			if row="1111" then
		siguiente<=conteo;
		else
		siguiente<=tc4;
		end if;

		when conteo=> 
			col<="1111";
			siguiente<=ini;
			end case;
	end process;
	--RELOJ MAQUINA DE ESTADOS
	process(clkdiv(19))
	begin
		if rising_edge(clkdiv(19)) then
			presente<=siguiente;
			end if;
	end process;
	--divisor de frecuencia
	process(clk)
	begin
		if rising_edge(clk) then
		clkdiv <= clkdiv+1;
		end if;
	end process;
	--registro del coodigo de la tecla
	process(clkdiv(19))
	begin 
		if falling_edge(clkdiv(19)) then
			case presente is
				when ini=>
					reg<=reg;
				when c1=>
					--R1
				if row="0111" then
					reg <= "0001"; --1
				elsif row="1011" then
					reg<= "0100"; --4
				elsif row="1101" then
					reg <= "0111"; --7
				elsif row="1110" then
					reg<= "0000"; --0
				else
					reg<=reg;
				end if;
			when c2=>
					--R2
				if row="0111" then
					reg <= "0010"; --2
				elsif row="1011" then
					reg <= "0101"; --5
				elsif row="1101" then
					reg <= "1000"; --8
				elsif row="1110" then
					reg <= "1111"; --F
				else
					reg<=reg;
				end if;
			when c3=>
					if row="0111" then
					reg <= "0011"; --3
				elsif row="1011" then
					reg <= "0110"; --6
				elsif row="1101" then
					reg <= "1001"; --9
				elsif row="1110" then
					reg <= "1110"; --E
				else
					reg<=reg;
				end if;
			when c4=>
					if row="0111" then
					reg <= "1010"; --A
				elsif row="1011" then
					reg <= "1011"; --B
				elsif row="1101" then
					reg <= "1100"; --C
				elsif row="1110" then
					reg <= "1101"; --D
				else
					reg<=reg;
				end if;
			when tc1=>
				reg<=reg;
			when tc2=>
				reg<=reg;
			when tc3=>
				reg<=reg;
			when tc4=>
				reg<=reg;
			when conteo=>
				reg<=reg;
			end case;
			end if;
	end process;
	
end Behavioral;

