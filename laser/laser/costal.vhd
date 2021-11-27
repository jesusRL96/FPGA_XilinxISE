--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 


library IEEE;
use IEEE.STD_LOGIC_1164.all;

package costal is
component controlador
    Port ( B : in  STD_LOGIC;
           clk_c : in  STD_LOGIC;
           Dreg_clr : out  STD_LOGIC;
           Dreg_ld : out  STD_LOGIC;
           Dctr_clr : out  STD_LOGIC;
           Dctr_cnt : out  STD_LOGIC;
           L : out  STD_LOGIC;
           S : in  STD_LOGIC);
end component;

component divisor
    Port ( clk : in  STD_LOGIC;
			  clk_sal_display: out  STD_LOGIC;	
           clk_sal : out  STD_LOGIC);
end component;

component Datapath
    Port ( clk_d : in  STD_LOGIC;
           Dreg_clr : in  STD_LOGIC;
           Dreg_ld : in  STD_LOGIC;
           Dctr_cnt : in  STD_LOGIC;
           Dctr_clr : in  STD_LOGIC;
           D : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component contador
    Port ( clk_disp : in  STD_LOGIC;
           selec : out  STD_LOGIC_VECTOR (1 downto 0));
end component;

component separador
	 Port ( ent : in  STD_LOGIC_VECTOR (15 downto 0);
			  sel : in  STD_LOGIC_VECTOR (1 downto 0);
			  an : out  STD_LOGIC_VECTOR (3 downto 0);
			  salida : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component display
    Port ( bin_ent : in  STD_LOGIC_VECTOR (3 downto 0);
           disp : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

end costal;
