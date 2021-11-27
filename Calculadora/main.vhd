----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:51:58 09/09/2017 
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
use work.costal.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main is
    Port ( clk : in  STD_LOGIC;
				clk2 : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           dis : out  STD_LOGIC_VECTOR (6 downto 0);
			  an: out std_logic_vector(3 downto 0);
			  leds :out std_logic_vector(7 downto 0);
			  dato: in STD_LOGIC);
end main;

architecture Behavioral of main is
signal auxld,consuma: std_logic;
signal auxcom: std_logic_vector(7 downto 0);
signal aux1: std_logic_vector(7 downto 0);
signal auxsal,auxsuma: std_logic_vector(7 downto 0);
begin

u1: registro port map(load=>auxld,rst=>rst,ent=>auxsuma,sal=>auxsal,clk=>clk2);
u2: controlador port map(clk=>clk2,a=>consuma,rst=>rst,b=>auxld,sal=>auxcom);
u3: comparador port map(dato=>auxcom,sal=>aux1);
u4: suma port map(a=>auxsal,b=>aux1,c=>auxsuma,d=>consuma);
u5: display port map(sal=>auxsuma,an=>an,segOut=>dis,rst=>rst,clk=>clk2);
u6: convertidor port map(clk=>clk,rst=>rst,sal=>auxcom,dato=>dato);
end Behavioral;

