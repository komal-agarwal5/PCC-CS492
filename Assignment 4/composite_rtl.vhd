----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:37:15 03/11/2024 
-- Design Name: 
-- Module Name:    composite_rtl - Behavioral 
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

entity composite_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           M : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
end composite_rtl;

architecture Behavioral of composite_rtl is
component full_adder1_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           s : out  STD_LOGIC;
           ca : out  STD_LOGIC);
end component;
component xor_rtl is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           z : out  STD_LOGIC);
end component;
signal temp1,temp2,temp3,temp4,c1,c2,c3:STD_LOGIC:='0';
begin
x1:xor_rtl port map(x=>B(0),y=>M,z=>temp1);
composite01:full_adder1_rtl port map(
				a=>A(0),
				b=>temp1,
				c=>M,
				s=>Sum(0),
				ca=>c1);
x2:xor_rtl port map(x=>B(1),y=>M,z=>temp2);
composite02:full_adder1_rtl port map(
				a=>A(1),
				b=>temp2,
				c=>c1,
				s=>Sum(1),
				ca=>c2);
x3:xor_rtl port map(x=>B(2),y=>M,z=>temp3);
composite03:full_adder1_rtl port map(
				a=>A(2),
				b=>temp3,
				c=>c2,
				s=>Sum(2),
				ca=>c3);
x4:xor_rtl port map(x=>B(3),y=>M,z=>temp4);
composite04:full_adder1_rtl port map(
				a=>A(3),
				b=>temp4,
				c=>c3,
				s=>Sum(3),
				ca=>Cout);
end Behavioral;

