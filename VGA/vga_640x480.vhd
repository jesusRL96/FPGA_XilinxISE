----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:30:50 09/29/2017 
-- Design Name: 
-- Module Name:    vga_640x480 - Behavioral 
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

entity vga_640x480 is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           hc : out  STD_LOGIC_VECTOR (9 downto 0);
           vc : out  STD_LOGIC_VECTOR (9 downto 0);
           hsync : out  STD_LOGIC;
           vidon : out  STD_LOGIC;
           vsync : out  STD_LOGIC);
end vga_640x480;


architecture Behavioral of vga_640x480 is
constant hpixels: STD_LOGIC_VECTOR (9 downto 0):="1100100000";--800
constant vpixels: STD_LOGIC_VECTOR (9 downto 0):="1000001001";--521
constant hbp: STD_LOGIC_VECTOR (9 downto 0):="0010010000";--144
constant hfp: STD_LOGIC_VECTOR (9 downto 0):="1100010000";--784
constant vbp: STD_LOGIC_VECTOR (9 downto 0):="0000011111";--31
constant vfp: STD_LOGIC_VECTOR (9 downto 0):="0111111111";--511
signal hcs,vcs: std_logic_vector(9 downto 0);
signal vsenable: std_logic;
begin
--contador horizontal de sync horizontal
process(clk,clr)
begin
if clr = '1' then
	hcs <= "0000000000";
elsif rising_edge(clk) then
	if hcs=hpixels-1 then
	vsenable <= '1' ;
	else
	hcs <= hcs + 1 ;
	vsenable <= '0' ;
	end if;
end if;
end process;
hsync <= '0' when hcs < 128 else '1';
--contador para la señal de sincronia vertical
process(clk,clr,vsenable)
begin
if clr = '1' then
	vcs <= "0000000000";
elsif (clk'event and clk='1' and vsenable = '1') then
	 if vcs = vpixels - 1 then
		vcs <= "0000000000";
	else
	   vcs <= vcs + 1 ;
	end if;
end if;	
end process;
vsync <= '0' when vcs < 2 else '1';
vidon <= '1' when (((hcs<hfp) and (hcs >= hbp)) and ((vcs < vfp) and (vcs >= vbp))) else '0';
hc <= hcs;
vc <= vcs;
end Behavioral;

