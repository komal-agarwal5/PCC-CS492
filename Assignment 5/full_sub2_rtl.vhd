----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:14:00 03/04/2024 
-- Design Name: 
-- Module Name:    full_sub2_rtl - Behavioral 
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

entity full_sub2_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Diff : out  STD_LOGIC;
           Borr : out  STD_LOGIC);
end full_sub2_rtl;

architecture Behavioral of full_sub2_rtl is
component half_sub_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           diff : out  STD_LOGIC;
           borr : out  STD_LOGIC);
end component;
signal temp,c1,c2:std_logic:='0';
begin
hs0: half_sub_rtl port map(
	a=>A,
	b=>B,
	diff=>temp,
	borr=>c1);
hs1: half_sub_rtl port map(
	a=>temp,
	b=>C,
	diff=>Diff,
	borr=>c2);
Borr<= c1 or c2;

end Behavioral;

