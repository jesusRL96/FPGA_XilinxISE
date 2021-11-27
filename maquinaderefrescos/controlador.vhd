----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:37:21 08/17/2017 
-- Design Name: 
-- Module Name:    controlador - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity controlador is
    Port ( c : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           tot_ld : out  STD_LOGIC;
           tot_clr : out  STD_LOGIC;
           d : out  STD_LOGIC;
           tot_s : in  STD_LOGIC);
end controlador;

architecture Behavioral of controlador is
type estados is (inicio, espera, suma, despacha);
signal presente,siguiente: estados;
begin
	-- transiciones y salidas
	process(c,tot_s)
	begin
		case presente is
			when inicio => 
				tot_ld <= '0';
				tot_clr <= '1';
				d <= '0';
				siguiente <= espera;
			when espera =>
				tot_ld <= '0';
				tot_clr <= '0';
				d <= '0';
				if c='1' then
					siguiente <= suma;
				elsif (c='0' and tot_s='1') then
					siguiente <=espera;
				elsif (c='0' and tot_s='0') then
					siguiente <=despacha;
				end if;
			when suma =>
				tot_ld <= '1';
				tot_clr <= '0';
				d <= '0';
				siguiente <= espera;
			when despacha=>
				tot_ld <= '0';
				tot_clr <= '0';
				d <= '1';
				siguiente <= inicio;
		end case;
	end process;
	
	process(clk,siguiente)
	begin
		if rising_edge(clk) then
			presente <= siguiente;
		end if;
	end process;
end Behavioral;

