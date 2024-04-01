----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:07:16 04/01/2024 
-- Design Name: 
-- Module Name:    one_to_eight_demux_rtl - Behavioral 
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

entity one_to_eight_demux_rtl is
    Port ( d : in  STD_LOGIC;
           s : in  STD_LOGIC_VECTOR (2 downto 0);
           o : out  STD_LOGIC_VECTOR (7 downto 0));
end one_to_eight_demux_rtl;

architecture Behavioral of one_to_eight_demux_rtl is

begin
	process(d,s)
		begin
			o<="00000000";
			case s is
				when "000"=>o(0)<=d;
				when "001"=>o(1)<=d;
				when "010"=>o(2)<=d;
				when "011"=>o(3)<=d;
				when "100"=>o(4)<=d;
				when "101"=>o(5)<=d;
				when "110"=>o(6)<=d;
				when "111"=>o(7)<=d;
				when others=>o<="00000000";
			end case;
	end process;
end Behavioral;

