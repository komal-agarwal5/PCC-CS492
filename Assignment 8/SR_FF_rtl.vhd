----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:23:06 04/08/2024 
-- Design Name: 
-- Module Name:    SR_FF_rtl - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SR_FF_rtl is
    Port ( s : in  STD_LOGIC;
           r : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC;
           qb : out  STD_LOGIC);
end SR_FF_rtl;

architecture Behavioral of SR_FF_rtl is
signal temp:STD_LOGIC:='0';
begin
	q<=temp;
	qb<=not(temp);
	process (s,r,reset,clk)
		begin
			if(reset='1') then
				temp<='0';
			elsif(RISING_EDGE(clk)) then
				if(s='0' and r='0') then
					temp<=temp;
				elsif(s='1' and r='1') then
					temp<='Z';
				elsif(s/=r) then
					temp<=s;
				end if;
			end if;
	end process;

end Behavioral;

