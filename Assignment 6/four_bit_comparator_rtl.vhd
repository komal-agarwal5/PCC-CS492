----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:07:05 04/01/2024 
-- Design Name: 
-- Module Name:    four_bit_comparator_rtl - Behavioral 
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

entity four_bit_comparator_rtl is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           eq : out  STD_LOGIC;
           gt : out  STD_LOGIC;
           lt : out  STD_LOGIC);
end four_bit_comparator_rtl;

architecture Behavioral of four_bit_comparator_rtl is
signal x0,x1,x2,x3:STD_LOGIC:='0';
begin
x0<=not((not(a(0))and b(0))or (a(0)and not(b(0))));
x1<=not((not(a(1))and b(1))or (a(1)and not(b(1))));
x2<=not((not(a(2))and b(2))or (a(2)and not(b(2))));
x3<=not((not(a(3))and b(3))or (a(3)and not(b(3))));

lt<=(not(a(3))and b(3)) or ((not(a(2))and b(2))and x3) or (((not(a(1))and b(1))and x3)and x2) or ((((not(a(0))and b(0))and x3)and x2)and x1);
gt<= (not(b(3))and a(3)) or ((not(b(2))and a(2))and x3) or (((not(b(1))and a(1))and x3)and x2) or ((((not(b(0))and a(0))and x3)and x2)and x1);
eq<= (((x3 and x2)and x1)and x0);
end Behavioral;

