--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:57:02 04/01/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000122098/four_bit_comparator/four_bit_comparator_test.vhd
-- Project Name:  four_bit_comparator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: four_bit_comparator_rtl
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
 
ENTITY four_bit_comparator_test IS
END four_bit_comparator_test;
 
ARCHITECTURE behavior OF four_bit_comparator_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_comparator_rtl
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         eq : OUT  std_logic;
         gt : OUT  std_logic;
         lt : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal eq : std_logic;
   signal gt : std_logic;
   signal lt : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_comparator_rtl PORT MAP (
          a => a,
          b => b,
          eq => eq,
          gt => gt,
          lt => lt
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
     a<="1010";
	  b<="1010";
	  wait for 1 ps;
	  a<="1000";
	  b<="1110";
	  wait for 1 ps;
	  a<="1101";
	  b<="0111";
	  wait for 1 ps;
	  a<="1111";
	  b<="1111";
	  wait for 1 ps;
	  a<="1011";
	  b<="0110";
	  wait for 1 ps;
   end process;

END;
