--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 


library IEEE;
use IEEE.STD_LOGIC_1164.all;

package costal is

  component registro 
    Port ( load : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           ent : in  STD_LOGIC_VECTOR(7 downto 0);
           sal : out  STD_LOGIC_VECTOR(7 downto 0);
           clk : in  STD_LOGIC);
end component;
component display 
    Port ( sal : in  STD_LOGIC_vector(7 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0);
			  segOut: out std_logic_vector(6 downto 0);
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC);
end component;
component comparador 
    Port ( dato : inout  STD_LOGIC_VECTOR(7 DOWNTO 0);
           sal : out  STD_LOGIC_vector(7 downto 0));
end component;
  component controlador 
    Port ( clk : in  STD_LoGIC;
           rst : in  STD_LOGIC;
           sal : in  STD_LOGIC_VECTOR (7 downto 0);
           a : out  STD_LOGIC;
           b : out  STD_LOGIC);
end component;
component suma 
    Port ( b : in  STD_LOGIC_vector(7 downto 0);
           a : in  STD_LOGIC_vector(7 downto 0);
           c : inout  STD_LOGIC_vector(7 downto 0);
			  d: in std_logic);
end component;

component convertidor 
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           sal : out  STD_LOGIC_VECTOR (7 downto 0);
           dato : in  STD_LOGIC);
end component;

end costal;
