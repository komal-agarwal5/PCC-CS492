--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:05:08 04/08/2024
-- Design Name:   
-- Module Name:   /home/student/13000122098/JK_FF/JK_FF_test.vhd
-- Project Name:  JK_FF
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: JK_FF_rtl
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY JK_FF_test IS
END JK_FF_test;
 
ARCHITECTURE behavior OF JK_FF_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT JK_FF_rtl
    PORT(
         j : IN  std_logic;
         k : IN  std_logic;
         reset : IN  std_logic;
         clk : IN  std_logic;
         q : OUT  std_logic;
         qb : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal j : std_logic := '0';
   signal k : std_logic := '0';
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal q : std_logic;
   signal qb : std_logic;

   -- Clock period definitions
   constant clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: JK_FF_rtl PORT MAP (
          j => j,
          k => k,
          reset => reset,
          clk => clk,
          q => q,
          qb => qb
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      j<='0';
		k<='0';
		reset<='0';
		wait for 2 ps;
		j<='0';
		k<='1';
		reset<='0';
		wait for 2 ps;
		j<='1';
		k<='0';
		reset<='0';
		wait for 2 ps;
		j<='1';
		k<='1';
		reset<='0';
		wait for 2 ps;
   end process;

END;
