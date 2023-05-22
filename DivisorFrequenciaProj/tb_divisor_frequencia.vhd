--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:55:39 05/19/2023
-- Design Name:   
-- Module Name:   /home/ise/Documents/DivisorFrequenciaProj/tb_divisor_frequencia.vhd
-- Project Name:  DivisorFrequenciaProj
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DivisorFrequencia
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
 
ENTITY tb_divisor_frequencia_10Hz IS
END tb_divisor_frequencia_10Hz;
 
ARCHITECTURE behavior OF tb_divisor_frequencia_10Hz IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DivisorFrequencia_10Hz
    PORT(
         CLK : IN  std_logic;
         DIV_CLK : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';

 	--Outputs
   signal DIV_CLK : std_logic := '0';

   -- Clock period definitions
   constant CLK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DivisorFrequencia_10Hz PORT MAP (
          CLK => CLK,
          DIV_CLK => DIV_CLK
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;

 

   -- Stimulus process
   stim_proc: process
   begin		
	
	wait for 100 ns;
	
	wait for 100 ns;
	
	wait for 100 ns;
	
	wait for 100 ns;
	
	wait for 100 ns;
	
	wait for 100 ns;
	
	wait for 100 ns;
	
	
   end process;

END;
