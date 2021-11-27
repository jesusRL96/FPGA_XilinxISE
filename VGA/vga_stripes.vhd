----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:43:39 10/06/2017 
-- Design Name: 
-- Module Name:    vga_stripes - Behavioral 
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

entity vga_stripes is
    Port ( hc : in  STD_LOGIC_vector(9 downto 0);
           vc : in  STD_LOGIC_vector(9 downto 0);
           vidon : in  STD_LOGIC;
           blue : out  STD_LOGIC_vector(1 downto 0);
           green : out  STD_LOGIC_vector(2 downto 0);
           red : out  STD_LOGIC_vector(2 downto 0));
end vga_stripes;

architecture Behavioral of vga_stripes is

begin
process(vidon,vc)
begin
red <= "000";
green <= "000";
blue <= "00";
if vidon = '1' then
red <= vc(4) & vc(4) & vc(4);
green <= not vc(4) & vc(4) & vc(4);
end if;
end process;

end Behavioral;

