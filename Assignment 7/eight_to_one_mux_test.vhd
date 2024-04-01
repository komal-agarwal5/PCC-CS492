--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:49:55 04/01/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000122098/eight_to_one_mux/eight_to_one_mux_test.vhd
-- Project Name:  eight_to_one_mux
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: eight_to_one_mux_rtl
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
 
ENTITY eight_to_one_mux_test IS
END eight_to_one_mux_test;
 
ARCHITECTURE behavior OF eight_to_one_mux_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT eight_to_one_mux_rtl
    PORT(
         d : IN  std_logic_vector(7 downto 0);
         s : IN  std_logic_vector(2 downto 0);
         op : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic_vector(7 downto 0) := (others => '0');
   signal s : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal op : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: eight_to_one_mux_rtl PORT MAP (
          d => d,
          s => s,
          op => op
        );

   -- Clock process definitions
  
 

   -- Stimulus process
   stim_proc: process
   begin		
      d<="00001111";
		s<="000";
		wait for 1 ps;
		d<="00000001";
		s<="001";
		wait for 1 ps;
		d<="00010000";
		s<="010";
		wait for 1 ps;
		d<="00111000";
		s<="011";
		wait for 1 ps;
		d<="00000110";
		s<="100";
		wait for 1 ps;
		d<="11110000";
		s<="101";
		wait for 1 ps;
		d<="11110011";
		s<="110";
		wait for 1 ps;
		d<="11110101";
		s<="111";
		wait for 1 ps;
   end process;

END;
