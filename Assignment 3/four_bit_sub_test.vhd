--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:31:14 03/04/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000122098/four_bit_sub/four_bit_sub_test.vhd
-- Project Name:  four_bit_sub
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: four_bit_sub_rtl
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
 
ENTITY four_bit_sub_test IS
END four_bit_sub_test;
 
ARCHITECTURE behavior OF four_bit_sub_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_sub_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         C : IN  std_logic;
         Diff : OUT  std_logic_vector(3 downto 0);
         Borr : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal C : std_logic := '0';

 	--Outputs
   signal Diff : std_logic_vector(3 downto 0);
   signal Borr : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_sub_rtl PORT MAP (
          A => A,
          B => B,
          C => C,
          Diff => Diff,
          Borr => Borr
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      A<="1110";
		B<="0101";
		C<='0';
		wait for 1 ps;
		A<="1110";
		B<="0101";
		C<='1';
		wait for 1 ps;
		A<="0110";
		B<="1000";
		C<='0';
		wait for 1 ps;
		A<="0110";
		B<="1000";
		C<='1';
		wait for 1 ps;
   end process;

END;
