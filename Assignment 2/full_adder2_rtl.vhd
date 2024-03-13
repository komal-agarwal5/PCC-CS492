----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:41:39 01/29/2024 
-- Design Name: 
-- Module Name:    full_adder2_rtl - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity full_adder2_rtl is
    Port ( a1 : in  STD_LOGIC;
           b1 : in  STD_LOGIC;
           c1 : in  STD_LOGIC;
           s1 : out  STD_LOGIC;
           ca1 : out  STD_LOGIC);
end full_adder2_rtl;

architecture Behavioral of full_adder2_rtl is

component half_adder_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out  STD_LOGIC;
           c : out  STD_LOGIC);
end component;
signal temp,t1,t2:STD_LOGIC:='0';
begin

	HA0:half_adder_rtl port map(a=>a1,b=>b1,s=>temp,c=>t1);
	HA1:half_adder_rtl port map(a=>temp,b=>c1,s=>s1,c=>t2);
	ca1<=t1 or t2;
end Behavioral;

