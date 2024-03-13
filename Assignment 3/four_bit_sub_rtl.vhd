----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:22:53 03/04/2024 
-- Design Name: 
-- Module Name:    four_bit_sub_rtl - Behavioral 
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

entity four_bit_sub_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           C : in  STD_LOGIC;
           Diff : out  STD_LOGIC_VECTOR (3 downto 0);
           Borr : out  STD_LOGIC);
end four_bit_sub_rtl;

architecture Behavioral of four_bit_sub_rtl is
component full_sub_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           diff : out  STD_LOGIC;
           borr : out  STD_LOGIC);
end component;
signal c1,c2,c3,c4 : std_logic:='0';
begin
sub01 : full_sub_rtl port map(
	a=>A(0),
	b=>B(0),
	c=>C,
	diff=>Diff(0),
	borr=>c1);
sub02 : full_sub_rtl port map(
	a=>A(1),
	b=>B(1),
	c=>c1,
	diff=>Diff(1),
	borr=>c2);
sub03 : full_sub_rtl port map(
	a=>A(2),
	b=>B(2),
	c=>c2,
	diff=>Diff(2),
	borr=>c3);
sub04 : full_sub_rtl port map(
	a=>A(3),
	b=>B(3),
	c=>c3,
	diff=>Diff(3),
	borr=>Borr);
end Behavioral;

