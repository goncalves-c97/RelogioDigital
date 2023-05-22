--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:39:18 05/18/2023
-- Design Name:   
-- Module Name:   /home/ise/Documents/Contador0a3Proj/tb_contador0a3.vhd
-- Project Name:  Contador0a3Proj
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Contador0a3
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
 
ENTITY tb_contador0a3 IS
END tb_contador0a3;
 
ARCHITECTURE behavior OF tb_contador0a3 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Contador0a3
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
			LAP : OUT std_logic;
         OUTPUT : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal OUTPUT : std_logic_vector(3 downto 0);
	signal LAP : std_logic := '0';

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Contador0a3 PORT MAP (
          CLK => CLK,
          RST => RST,
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
      -- Conta at 2
      wait for 10 ns;	
		wait for 10 ns;	
		
		-- Reseta para 0 
		RST <= '1';
		
		-- Aguarda mais um tempo
		wait for 10 ns;	
		wait for 10 ns;	
		wait for 10 ns;

		-- Retira o reset
		RST <= '0';
		
		-- Aguarda mais um tempo 
		wait for 10 ns;	
		wait for 10 ns;	
		wait for 10 ns;	
		wait for 10 ns;	
		wait for 10 ns;	
		wait for 10 ns;	
   end process;

END;
