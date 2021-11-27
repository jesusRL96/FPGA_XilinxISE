--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 


library IEEE;
use IEEE.STD_LOGIC_1164.all;

package costal is
component tot 
    Port ( load : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           ent : in  STD_LOGIC_VECTOR (7 downto 0);
           sal : out  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC);
end component;

component sumador8
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
           b : in  STD_LOGIC_VECTOR (7 downto 0);
           suma : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component comparador8
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
           b : in  STD_LOGIC_VECTOR (7 downto 0);
           c : out  STD_LOGIC);
end component;
component divisor
    Port ( rst : in  STD_LOGIC;
           clksal : out  STD_LOGIC;
           clk : in  STD_LOGIC);
end component;
component controlador
    Port ( c : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           tot_ld : out  STD_LOGIC;
           tot_clr : out  STD_LOGIC;
           d : out  STD_LOGIC;
           tot_s : in  STD_LOGIC);
end component;
end costal;
