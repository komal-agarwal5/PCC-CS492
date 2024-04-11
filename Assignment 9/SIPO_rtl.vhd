----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:57:59 04/08/2024 
-- Design Name: 
-- Module Name:    SIPO_rtl - Behavioral 
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

entity SIPO_rtl is
    Port ( data : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           qs : inout  STD_LOGIC_VECTOR (3 downto 0));
end SIPO_rtl;

architecture Behavioral of SIPO_rtl is
component D_FF_rtl is
    Port ( d : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC);
end component;
begin
d0:D_FF_rtl port map(
	d=>data,
	reset=>rst,
	clk=>clock,
	q=>qs(0));
	
d1:D_FF_rtl port map(
	d=>qs(0),
	reset=>rst,
	clk=>clock,
	q=>qs(1));
d2:D_FF_rtl port map(
	d=>qs(1),
	reset=>rst,
	clk=>clock,
	q=>qs(2));
d3:D_FF_rtl port map(
	d=>qs(2),
	reset=>rst,
	clk=>clock,
	q=>qs(3));
end Behavioral;

