--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:39:49 04/08/2024
-- Design Name:   
-- Module Name:   /home/student/13000122098/SIPO/SIPO_test.vhd
-- Project Name:  SIPO
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SIPO_rtl
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
 
ENTITY SIPO_test IS
END SIPO_test;
 
ARCHITECTURE behavior OF SIPO_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SIPO_rtl
    PORT(
         data : IN  std_logic;
         rst : IN  std_logic;
         clock : IN  std_logic;
         qs : INOUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal data : std_logic := '0';
   signal rst : std_logic := '0';
   signal clock : std_logic := '0';

	--BiDirs
   signal qs : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clock_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SIPO_rtl PORT MAP (
          data => data,
          rst => rst,
          clock => clock,
          qs => qs
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      data<='1';
		rst<='0';
		wait for 1 ps;
   end process;

END;
