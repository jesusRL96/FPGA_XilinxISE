--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 


library IEEE;
use IEEE.STD_LOGIC_1164.all;

package costal is

component divisor 
    Port ( clk : in  STD_LOGIC;
		     clk_sal : out  STD_LOGIC;
           clk_sal_display : out  STD_LOGIC);
end component;

component asciianum
    Port ( enthex : in  STD_LOGIC_VECTOR (7 downto 0);
           salbin : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component captura 
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
			  rst2 : in  STD_LOGIC;
           dato : in  STD_LOGIC;
           salidaHex : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component contador
    Port ( clk_disp : in  STD_LOGIC;
           selec : INout  STD_LOGIC_VECTOR(0 DOWNTO 0));
end component;
  
component controlador 
    Port ( 
			  clk : in  STD_LOGIC;
			  rst : in  STD_LOGIC;
           Dreg_sum : out  STD_LOGIC;
			  Dreg_clr : out  STD_LOGIC;
           Dreg_ld : out  STD_LOGIC);
end component;
 
component datapath 
    Port ( clk : in  STD_LOGIC;
           datobin : in  STD_LOGIC_VECTOR (3 downto 0);
			  rst2 : out  STD_LOGIC;
           Dreg_sum : in  STD_LOGIC;
           Dreg_clr : in  STD_LOGIC;
           Dreg_ld : in  STD_LOGIC;
           salidasuma : inout  STD_LOGIC_VECTOR (7 downto 0));
end component;

component display 
    Port ( disp : out  STD_LOGIC_VECTOR (6 downto 0);
           bin_ent : in  STD_LOGIC_VECTOR (3 downto 0));
end component;

component separador 
    Port ( sel : in  STD_LOGIC_VECTOR(0 DOWNTO 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0);
           salida : out  STD_LOGIC_VECTOR (3 downto 0);
           entbin : in  STD_LOGIC_VECTOR (7 downto 0));
end component;

component mostrar
    Port ( sal :in  STD_LOGIC_vector(7 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0);
			  segOut: out std_logic_vector(6 downto 0);
           clk : in  STD_LOGIC);
end component;
end costal;
