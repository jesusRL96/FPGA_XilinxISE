----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:48:46 08/17/2017 
-- Design Name: 
-- Module Name:    tot - Behavioral 
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

entity tot is
    Port ( load : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           ent : in  STD_LOGIC_VECTOR (7 downto 0);
           sal : out  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC);
end tot;

architecture Behavioral of tot is

begin
	process(clk,load,clr)
	begin
		if clr='1' then
			sal <= "00000000";
		elsif (clk'event and clk='1') then
			if load='1' then
				sal<= ent;
			end if;
		end if;
	end process;

end Behavioral;

