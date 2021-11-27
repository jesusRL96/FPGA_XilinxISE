--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package vga is

component clkdiv 
    Port ( mclk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           clk25 : out  STD_LOGIC);
end component;

component vga_640x480 
  port ( clk, clr: in std_logic;
         hsync : out std_logic;
			vsync : out std_logic;
			hc : out std_logic_vector(9 downto 0);
			vc : out std_logic_vector(9 downto 0);
			vidon : out std_logic);
end component;

component prom 
    Port ( addr : in  STD_LOGIC_VECTOR (3 downto 0);
           m : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component vga_patron 
    Port ( vidon : in  STD_LOGIC;
           hc : in  STD_LOGIC_VECTOR (9 downto 0);
           vc : in  STD_LOGIC_VECTOR (9 downto 0);
           m : in  STD_LOGIC_VECTOR (31 downto 0);
           sw : in  STD_LOGIC_VECTOR (7 downto 0);
           rom_addr4 : out  STD_LOGIC_VECTOR (3 downto 0);
           red : out  STD_LOGIC_VECTOR (2 downto 0);
           green : out  STD_LOGIC_VECTOR (2 downto 0);
           blue : out  STD_LOGIC_VECTOR (1 downto 0));
end component;
 
end vga;
