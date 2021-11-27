----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:45:25 10/06/2017 
-- Design Name: 
-- Module Name:    vga_patron - Behavioral 
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

entity vga_patron is
    Port ( vidon : in  STD_LOGIC;
           hc : in  STD_LOGIC_VECTOR (9 downto 0);
           vc : in  STD_LOGIC_VECTOR (9 downto 0);
           m : in  STD_LOGIC_VECTOR (0 to 31);
           sw : in  STD_LOGIC_VECTOR (7 downto 0);
           rom_addr4 : out  STD_LOGIC_VECTOR (3 downto 0);
           red : out  STD_LOGIC_VECTOR (2 downto 0);
           green : out  STD_LOGIC_VECTOR (2 downto 0);
           blue : out  STD_LOGIC_VECTOR (1 downto 0));
end vga_patron;

architecture Behavioral of vga_patron is
constant hbp: std_logic_vector (9 downto 0):="0010010000"; --horizontal back porch =128 + 16
constant vbp: std_logic_vector (9 downto 0):="0000011111"; --vertical back porch = 2 + 29
constant w: integer:=32;
constant h: integer:=16;
signal c1,r1:std_logic_vector (10 downto 0);
signal rom_addr,rom_pix:std_logic_vector (10 downto 0);
signal spriteon,R,G,B:std_logic;
begin
	-- establece c1, r1 utilazando los switches 
	c1 <= "00" & sw(3 downto 0) & "00001";
	r1 <= "00" & sw(7 downto 4) & "00001";
	
	rom_addr <= vc - vbp - r1;
	rom_pix <= hc - hbp -c1;
	rom_addr4 <= rom_addr(3 downto 0);
	
	spriteon <= '1' when (((hc>= c1 + hbp) and (hc<c1+hbp+w))and ((vc >=r1+vbp) and (vc<r1+vbp+h))) else '0';
	
	process (spriteon, vidon, rom_pix,m)
	variable j: integer;
	begin
	
	red <= "000";
	green <= "000";
	blue <= "00";
	
	R <= '0';
	G <= '0';
	B <= '0';
	
	if spriteon = '1' and vidon = '1' then
		j:= conv_integer(rom_pix);
		R <= m(j);
		G <= m(j);
		B <= m(j);
		
		red <= R & R & R;
		green <= G & G & G;
		blue <= B & B ;
	end if;
	end process;
	
end Behavioral;

