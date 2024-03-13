----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:16:22 01/29/2024 
-- Design Name: 
-- Module Name:    full_adder1_rtl - Behavioral 
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

entity full_adder1_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           s : out  STD_LOGIC;
           ca : out  STD_LOGIC);
end full_adder1_rtl;

architecture Behavioral of full_adder1_rtl is

signal temp:STD_LOGIC:='0';

begin
	temp<=(not (a) and b) or (a and not (b));
	s<=(not (temp) and c) or (temp and not(c));
	ca<=(a and b) or (temp and c);

end Behavioral;

