--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:36:18 04/08/2024
-- Design Name:   
-- Module Name:   /home/student/13000322051/SR_FF/SR_FF_test.vhd
-- Project Name:  SR_FF
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SR_FF_rtl
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
 
ENTITY SR_FF_test IS
END SR_FF_test;
 
ARCHITECTURE behavior OF SR_FF_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SR_FF_rtl
    PORT(
         s : IN  std_logic;
         r : IN  std_logic;
         reset : IN  std_logic;
         clk : IN  std_logic;
         q : OUT  std_logic;
         qb : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal s : std_logic := '0';
   signal r : std_logic := '0';
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal q : std_logic;
   signal qb : std_logic;

   -- Clock period definitions
   constant clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SR_FF_rtl PORT MAP (
          s => s,
          r => r,
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
      s<='0';
		r<='0';
		reset<='0';
		wait for 2 ps;
		s<='0';
		r<='1';
		reset<='0';
		wait for 2 ps;
		s<='1';
		r<='0';
		reset<='0';
		wait for 2 ps;
		s<='1';
		r<='1';
		reset<='0';
		wait for 2 ps;
   end process;

END;
