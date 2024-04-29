----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:08:49 04/16/2024 
-- Design Name: 
-- Module Name:    counter_rtl - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter_rtl is
    Port ( up_down : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           count : out  STD_LOGIC_VECTOR (3 downto 0));
end counter_rtl;

architecture Behavioral of counter_rtl is

signal temp : STD_LOGIC_VECTOR (3 downto 0);

begin
	process(up_down, reset, clk)
	begin
		if (reset = '1') then
			temp <= "0000";
		elsif (RISING_EDGE(clk)) then
			if (up_down = '0') then
				temp <= temp + 1;
			else
				temp <= temp - 1;
			end if;
		end if;
	end process;
	count <= temp;

end Behavioral;

