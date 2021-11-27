----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:02:33 10/06/2017 
-- Design Name: 
-- Module Name:    main - Behavioral 
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
use work.paquete.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main is
    Port ( mclk : in  STD_LOGIC;
           mclr : in  STD_LOGIC;
           hsync : out  STD_LOGIC;
           vsync : out  STD_LOGIC;
           red : out  STD_LOGIC_VECTOR (2 downto 0);
           green : out  STD_LOGIC_VECTOR (2 downto 0);
           blue : out  STD_LOGIC_VECTOR (1 downto 0));
end main;

architecture Behavioral of main is
signal auxclk,vidon: std_logic;
signal hc,vc: std_logic_vector(9 downto 0);
begin
u1: DIVISOR port map(mclk=> mclk,clr=>mclr,clk25=>auxclk);
u2: vga_640x480 port map(clk=>auxclk,clr=>mclr,hsync=>hsync,vsync=>vsync,hc=>hc,vc=>vc,vidon=>vidon);
u3: vga_stripes port map(vidon=>vidon,hc=>hc,vc=>vc,red=>red,green=>green,blue=>blue);
end Behavioral;

