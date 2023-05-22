--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:44:29 05/18/2023
-- Design Name:   
-- Module Name:   /home/ise/Documents/Contador0a2Proj/tb_contador0a2.vhd
-- Project Name:  Contador0a2Proj
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Contador0a2
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
 
ENTITY tb_contador0a2 IS
END tb_contador0a2;
 
ARCHITECTURE behavior OF tb_contador0a2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Contador0a2
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
			LAP_ENABLE : IN std_logic;
			ADJUST : IN std_logic;
			MAX : OUT std_logic;
			LAP : OUT std_logic;
         OUTPUT : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
	signal LAP_ENABLE : std_logic := '1';
	signal ADJUST : std_logic := '0';

 	--Outputs
   signal OUTPUT : std_logic_vector(3 downto 0);
	signal LAP : std_logic := '0';
	signal MAX : std_logic := '0';

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Contador0a2 PORT MAP (
          CLK => CLK,
          RST => RST,
			 LAP_ENABLE => LAP_ENABLE,
			 ADJUST => ADJUST,
			 MAX => MAX,
			 LAP => LAP,
          OUTPUT => OUTPUT
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
		LAP_ENABLE <= '0';
		wait for 100 ns;
		wait for 100 ns;
		wait for 100 ns;
		ADJUST <= '1';
		wait for 100 ns;
		ADJUST <= '0';
		wait for 100 ns;
		wait for 100 ns;
		ADJUST <= '1';
		wait for 100 ns;
		ADJUST <= '0';
		wait for 100 ns;
		wait for 100 ns;
		ADJUST <= '1';
		wait for 100 ns;
		ADJUST <= '0';
		wait for 100 ns;
		wait for 100 ns;
		ADJUST <= '1';
		wait for 100 ns;
		ADJUST <= '0';
		wait for 100 ns;	
   end process;

END;
