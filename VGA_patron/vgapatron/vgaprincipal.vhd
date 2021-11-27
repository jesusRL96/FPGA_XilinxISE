----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:54:22 10/09/2013 
-- Design Name: 
-- Module Name:    vgaprincipal - Behavioral 
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
use work.vga.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vgaprincipal is
    Port ( mclk : in  STD_LOGIC;
           boton : in  STD_LOGIC;
           sw : in  STD_LOGIC_VECTOR (7 downto 0);
           hsync : out  STD_LOGIC;
           vsync : out  STD_LOGIC;
           red : out  STD_LOGIC_VECTOR (2 downto 0);
           green : out  STD_LOGIC_VECTOR (2 downto 0);
           blue : out  STD_LOGIC_VECTOR (1 downto 0));
end vgaprincipal;

architecture Behavioral of vgaprincipal is
signal clr,clk25,vidon: std_logic;
signal hc,vc: std_logic_vector(9 downto 0);
signal m: std_logic_vector (31 downto 0);
signal rom_addr4: std_logic_vector(3 downto 0);

begin
  clr <= boton;
  
u1: clkdiv port map (mclk=>mclk,
                     clr=>clr,
							clk25=>clk25);

u2: vga_640x480 port map (clk=>clk25,		
								clr=>clr,
								hsync=>hsync,
								vsync=>vsync,
								hc=>hc,
								vc=>vc,
								vidon=>vidon);
								
u3: vga_patron port map (vidon=>vidon,
                         hc=>hc,
								 vc=>vc,
								 m=>m,
								 sw=>sw,
								 rom_addr4=>rom_addr4,
								 red=>red,
								 green=>green,
								 blue=>blue);

u4: prom port map (addr=>rom_addr4,m=>m);								 
								 
								 
								 
								 


end Behavioral;

