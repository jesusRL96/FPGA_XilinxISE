----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:25:17 10/06/2017 
-- Design Name: 
-- Module Name:    prom - Behavioral 
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

entity prom is
    Port ( addr : in  STD_LOGIC_VECTOR (3 downto 0);
           m : out  STD_LOGIC_VECTOR (0 to 31));
end prom;

architecture Behavioral of prom is
type rom_array is array (natural range<>) of std_logic_vector (0 to 31);
constant mem: rom_array:=(
X"0007E000",
X"00189800",
X"00248400",
X"00444200",
X"00483E00",
X"00500200",
X"00A7C100",
X"00882700",
X"00C82900",
X"00A82900",
X"00A7C900",
X"00A00700",
X"00CFF100",
X"00724E00",
X"00224400",
X"00200400");
begin
	process(addr)
	variable j: integer;
	begin
		j:=conv_integer(addr);
		m<=mem(j);
	end process;

end Behavioral;

