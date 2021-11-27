----------------------------------------------------------------------------------
-- Company: Digilent Inc 2011
-- Engineer: Michelle Yu  
-- Create Date:    14:52:09 08/17/2011 
--
-- Module Name:   PmodENC - Behavioral 
-- Project Name:  PmodENC
-- Target Devices: Nexys3
-- Tool versions: Xilinx ISE Design Suite 13.2
--
-- Description: 
--	This project changes the seven segment display when the position of rotary shaft
-- is changed. The number on the seven segment display is relative to the start position.
-- When the rotary button is pressed, the program resets. The switch controls whether 
-- the seven segment display turns on or off. LED 0 and 1 indicated the direction the 
-- rotary shaft is turned. LED 0 is on when the shaft is turned right, LED 1 is on when
-- the shaft is turned left.
--
-- Revision: 
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity PmodENC is
    Port (
			  clk: in std_logic;
           JA : in STD_LOGIC_VECTOR (7 downto 4);  	-- the pmod is plugged in to the lower row of connector JA
           an : out  STD_LOGIC_VECTOR (3 downto 0);	-- controls the display digits
			  seg: out  STD_LOGIC_VECTOR (6 downto 0);	-- controls what digit to display 
			  Led: out STD_LOGIC_VECTOR (1 downto 0)		-- Led indicates the direction the shaft is being rotated 

			  );
end PmodENC;



architecture Behavioral of PmodENC is
component Debouncer is
	port(
			clk : in  STD_LOGIC;
         Ain : in  STD_LOGIC;
         Bin : in  STD_LOGIC;
			Aout: out STD_LOGIC;
			Bout: out STD_LOGIC
		);
	end component;

component Encoder is
	Port (
					clk: in STD_LOGIC;
					A : in  STD_LOGIC;
					B : in  STD_LOGIC;
					BTN : in  STD_LOGIC;
					EncOut: inout STD_LOGIC_VECTOR (4 downto 0);
					LED: out STD_LOGIC_VECTOR (1 downto 0)
			  );
	end component;
	
component DisplayController is
	Port (
			  clk : in std_logic;
			  SWT: in std_logic;
			  DispVal : in  STD_LOGIC_VECTOR (4 downto 0);
           anode: out std_logic_vector(3 downto 0);
           segOut : out  STD_LOGIC_VECTOR (6 downto 0));
	end component;

signal EncO : std_logic_vector (4 downto 0);
signal AO, BO: std_logic;
begin
	
	C0: Debouncer port map ( clk=>clk, Ain=> JA(4), Bin=>JA(5), Aout=> AO,Bout=>BO  );
	C1: Encoder port map ( clk=>clk, A=>AO  , B=>BO   , BTN=>JA(6), EncOut=>EncO, LED=>Led   );
	C2: DisplayController port map (clk=>clk, SWT=>JA(7), DispVal=>EncO, anode=>an, segOut=>seg   );

end Behavioral;

