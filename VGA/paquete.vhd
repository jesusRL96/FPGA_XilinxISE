--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 


library IEEE;
use IEEE.STD_LOGIC_1164.all;

package paquete is

component  DIVISOR 
    Port ( clr : in  STD_LOGIC;
           clk25 : out  STD_LOGIC;
           mclk : in  STD_LOGIC);
end component;

  component vga_stripes 
    Port ( hc : in  STD_LOGIC_vector(9 downto 0);
           vc : in  STD_LOGIC_vector(9 downto 0);
           vidon : in  STD_LOGIC;
           blue : out  STD_LOGIC_vector(1 downto 0);
           green : out  STD_LOGIC_vector(2 downto 0);
           red : out  STD_LOGIC_vector(2 downto 0));
end component;
component  vga_640x480 
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           hc : out  STD_LOGIC_VECTOR (9 downto 0);
           vc : out  STD_LOGIC_VECTOR (9 downto 0);
           hsync : out  STD_LOGIC;
           vidon : out  STD_LOGIC;
           vsync : out  STD_LOGIC);
end component;

end paquete;
