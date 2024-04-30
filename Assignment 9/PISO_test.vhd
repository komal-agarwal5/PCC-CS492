--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:46:00 04/15/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000122098/PISO/PISO_test.vhd
-- Project Name:  PISO
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PISO_rtl
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
 
ENTITY PISO_test IS
END PISO_test;
 
ARCHITECTURE behavior OF PISO_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PISO_rtl
    PORT(
         data : IN  std_logic_vector(3 downto 0);
         rst : IN  std_logic;
         clock : IN  std_logic;
         load : IN  std_logic;
         dout_vector : OUT  std_logic_vector(3 downto 0);
         dout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal data : std_logic_vector(3 downto 0) := (others => '0');
   signal rst : std_logic := '0';
   signal clock : std_logic := '0';
   signal load : std_logic := '0';

 	--Outputs
   signal dout_vector : std_logic_vector(3 downto 0);
   signal dout : std_logic;

   -- Clock period definitions
   constant clock_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PISO_rtl PORT MAP (
          data => data,
          rst => rst,
          clock => clock,
          load => load,
          dout_vector => dout_vector,
          dout => dout
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
      rst<='1';
		wait for 2 ps;
		data<="1110";
		rst<='0';
		load<='0';
		wait for 2 ps;
		shift : for i in 0 to 3 loop
					data<="1110";
					rst<='0';
					load<='1';
					wait for 2 ps;
		end loop; 
   end process;

END;
