----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:19:58 04/08/2024 
-- Design Name: 
-- Module Name:    D_FF_rtl - Behavioral 
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

entity D_FF_rtl is
    Port ( d : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC;
           qb : out  STD_LOGIC);
end D_FF_rtl;

architecture Behavioral of D_FF_rtl is
signal temp:STD_LOGIC:='0';
begin
	q<=temp;
	qb<=not(temp);
	process(d,reset,clk)
	begin
		if(reset='1') then
			temp<='0';
		elsif(RISING_EDGE(clk)) then
			if (d='0' or d='1') then
				temp<=d;
			end if;
		end if;
	end process;
end Behavioral;

