----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:34:00 04/01/2024 
-- Design Name: 
-- Module Name:    eight_to_one_mux_rtl - Behavioral 
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

entity eight_to_one_mux_rtl is
    Port ( d : in  STD_LOGIC_VECTOR (7 downto 0);
           s : in  STD_LOGIC_VECTOR (2 downto 0);
           op : out  STD_LOGIC);
end eight_to_one_mux_rtl;

architecture Behavioral of eight_to_one_mux_rtl is

begin
	process(d,s)
		begin
			case s is
				when "000"=>op<=d(0);
				when "001"=>op<=d(1);
				when "010"=>op<=d(2);
				when "011"=>op<=d(3);
				when "100"=>op<=d(4);
				when "101"=>op<=d(5);
				when "110"=>op<=d(6);
				when "111"=>op<=d(7);
				when others=>op<='0';
			end case;
		end process;
end Behavioral;

