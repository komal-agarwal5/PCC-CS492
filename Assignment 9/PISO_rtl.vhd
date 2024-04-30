----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:16:51 04/15/2024 
-- Design Name: 
-- Module Name:    PISO_rtl - Behavioral 
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

entity PISO_rtl is
    Port ( data : in  STD_LOGIC_VECTOR (3 downto 0);
           rst : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           load : in  STD_LOGIC;
           dout_vector : out  STD_LOGIC_VECTOR (3 downto 0);
           dout : out  STD_LOGIC);
end PISO_rtl;

architecture Behavioral of PISO_rtl is
component D_FF_rtl is
    Port ( d : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC;
           qb : out  STD_LOGIC);
end component;
signal t0,t1,t2,t3,n0,n1,n2:STD_LOGIC:='0';
begin
d0:D_FF_rtl port map (
		d=>data(0),
		reset=>rst,
		clk=>clock,
		q=>t0);
n0<=(t0 and load) or (data(1) and not(load));
d1:D_FF_rtl port map (
		d=>n0,
		reset=>rst,
		clk=>clock,
		q=>t1);
n1<=(t1 and load) or (data(2) and not(load));
d2:D_FF_rtl port map(
		d=>n1,
		reset=>rst,
		clk=>clock,
		q=>t2);
n2<=(t2 and load) or (data(3) and not(load));
d3:D_FF_rtl port map(
		d=>n2,
		reset=>rst,
		clk=>clock,
		q=>t3);
dout_vector(0)<=t0;
dout_vector(1)<=t1;
dout_vector(2)<=t2;
dout_vector(3)<=t3;
dout<=t3;

end Behavioral;

