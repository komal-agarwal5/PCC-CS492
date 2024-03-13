--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:06:19 01/29/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000122098/assignment2c/full_adder2_test.vhd
-- Project Name:  assignment2c
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: full_adder2_rtl
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
 
ENTITY full_adder2_test IS
END full_adder2_test;
 
ARCHITECTURE behavior OF full_adder2_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_adder2_rtl
    PORT(
         a1 : IN  std_logic;
         b1 : IN  std_logic;
         c1 : IN  std_logic;
         s1 : OUT  std_logic;
         ca1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a1 : std_logic := '0';
   signal b1 : std_logic := '0';
   signal c1 : std_logic := '0';

 	--Outputs
   signal s1 : std_logic;
   signal ca1 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_adder2_rtl PORT MAP (
          a1 => a1,
          b1 => b1,
          c1 => c1,
          s1 => s1,
          ca1 => ca1
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
		a1<='0';
		b1<='0';
		c1<='0';
		wait for 1ps;
		a1<='0';
		b1<='0';
		c1<='1';
		wait for 1ps;
		a1<='0';
		b1<='1';
		c1<='0';
		wait for 1ps;
		a1<='0';
		b1<='1';
		c1<='1';
		wait for 1ps;
		a1<='1';
		b1<='0';
		c1<='0';
		wait for 1ps;
		a1<='1';
		b1<='0';
		c1<='1';
		wait for 1ps;
		a1<='1';
		b1<='1';
		c1<='0';
		wait for 1ps;
		a1<='1';
		b1<='1';
		c1<='1';
		wait for 1ps;
   end process;

END;
