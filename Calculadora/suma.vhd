----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:11:03 09/09/2017 
-- Design Name: 
-- Module Name:    suma - Behavioral 
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

entity suma is
    Port ( b : in  STD_LOGIC_vector(7 downto 0);
           a : in  STD_LOGIC_vector(7 downto 0);
           c : inout  STD_LOGIC_vector(7 downto 0);
			  d: in std_logic);
end suma;

architecture Behavioral of suma is

begin

process(d)
begin
if d='1' then
c <= a + b;
else 
c <= c;
end if;
end process;

end Behavioral;

