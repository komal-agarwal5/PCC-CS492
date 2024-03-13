----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:18:20 03/04/2024 
-- Design Name: 
-- Module Name:    four_bit_adder_rtl - Behavioral 
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

entity four_bit_adder_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           C : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           Carry : out  STD_LOGIC);
end four_bit_adder_rtl;

architecture Behavioral of four_bit_adder_rtl is
component full_adder1_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           s : out  STD_LOGIC;
           ca : out  STD_LOGIC);
end component;
signal c1,c2,c3,c4 : std_logic:='0';
begin
adder01 : full_adder1_rtl port map(
	a=>A(0),
	b=>B(0),
	c=>C,
	s=>S(0),
	ca=>c1);
adder02 : full_adder1_rtl port map(
	a=>A(1),
	b=>B(1),
	c=>c1,
	s=>S(1),
	ca=>c2);
adder03 : full_adder1_rtl port map(
	a=>A(2),
	b=>B(2),
	c=>c2,
	s=>S(2),
	ca=>c3);
adder04 : full_adder1_rtl port map(
	a=>A(3),
	b=>B(3),
	c=>c3,
	s=>S(3),
	ca=>c4);
Carry <= c4;
end Behavioral;

