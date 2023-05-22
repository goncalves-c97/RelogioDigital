--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:09:29 05/21/2023
-- Design Name:   
-- Module Name:   /home/ise/Documents/ContadorHoraMinutoProj/tb_hora_minuto.vhd
-- Project Name:  ContadorHoraMinutoProj
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ContadorHoraMinuto
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

ENTITY tb_hora_minuto IS
END tb_hora_minuto;
 
ARCHITECTURE behavior OF tb_hora_minuto IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ContadorHoraMinuto
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
			ADJ_DH, ADJ_UH, ADJ_DM, ADJ_UM : in  STD_LOGIC;
			LAP_ENABLE : IN std_logic;
         LAP : OUT  std_logic;
         OUTPUT : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
	signal ADJ_DH : STD_LOGIC := '0'; 
	signal ADJ_UH : STD_LOGIC := '0';
	signal ADJ_DM : STD_LOGIC := '0'; 
	signal ADJ_UM : STD_LOGIC := '0';
	signal LAP_ENABLE : std_logic := '1';

 	--Outputs
   signal LAP : std_logic;
   signal OUTPUT : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ContadorHoraMinuto PORT MAP (
          CLK => CLK,
          RST => RST,
			 ADJ_DH => ADJ_DH,
			 ADJ_UH => ADJ_UH,
			 ADJ_DM => ADJ_DM,
			 ADJ_UM => ADJ_UM,
			 LAP_ENABLE => LAP_ENABLE,
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
      wait for 15 us;
		LAP_ENABLE <= '0';
		wait for 100 ns;
		
		-- Ajustar para 12:30 
		
		ADJ_UH <= '1';
		wait for 20 ns;
		ADJ_UH <= '0';
		wait for 20 ns;
		
		ADJ_DH <= '1';
		wait for 20 ns;
		ADJ_DH <= '0';
		wait for 20 ns;
		
		ADJ_DM <= '1';
		wait for 20 ns;
		ADJ_DM <= '0';
		wait for 20 ns;
		
		ADJ_DM <= '1';
		wait for 20 ns;
		ADJ_DM <= '0';
		wait for 20 ns;
		
		ADJ_DM <= '1';
		wait for 20 ns;
		ADJ_DM <= '0';
		wait for 20 ns;
		
		-- Ajustar para 17:52 
		
		ADJ_UH <= '1';
		wait for 20 ns;
		ADJ_UH <= '0';
		wait for 20 ns;
		
		ADJ_UH <= '1';
		wait for 20 ns;
		ADJ_UH <= '0';
		wait for 20 ns;
		
		ADJ_UH <= '1';
		wait for 20 ns;
		ADJ_UH <= '0';
		wait for 20 ns;
		
		ADJ_UH <= '1';
		wait for 20 ns;
		ADJ_UH <= '0';
		wait for 20 ns;
		
		ADJ_UH <= '1';
		wait for 20 ns;
		ADJ_UH <= '0';
		wait for 20 ns;
		
		ADJ_DM <= '1';
		wait for 20 ns;
		ADJ_DM <= '0';
		wait for 20 ns;
		
		ADJ_DM <= '1';
		wait for 20 ns;
		ADJ_DM <= '0';
		wait for 20 ns;
		
		ADJ_UM <= '1';
		wait for 20 ns;
		ADJ_UM <= '0';
		wait for 20 ns;
		
		ADJ_UM <= '1';
		wait for 20 ns;
		ADJ_UM <= '0';
		wait for 20 ns;
		
		-- Ajustar para 17:02 
		
		ADJ_DM <= '1';
		wait for 20 ns;
		ADJ_DM <= '0';
		wait for 20 ns;
		
		-- Ajustar para 27:02 ?? BUG
		
		ADJ_DH <= '1';
		wait for 20 ns;
		ADJ_DH <= '0';
		wait for 20 ns;
		
		-- Ajustar para 21:00
		
		ADJ_UH <= '1';
		wait for 20 ns;
		ADJ_UH <= '0';
		wait for 20 ns;
		
		ADJ_UH <= '1';
		wait for 20 ns;
		ADJ_UH <= '0';
		wait for 20 ns;
		
		ADJ_UH <= '1';
		wait for 20 ns;
		ADJ_UH <= '0';
		wait for 20 ns;
		
		ADJ_UH <= '1';
		wait for 20 ns;
		ADJ_UH <= '0';
		wait for 20 ns;
		
		ADJ_UH <= '1';
		wait for 20 ns;
		ADJ_UH <= '0';
		wait for 20 ns;
		
		ADJ_UH <= '1';
		wait for 20 ns;
		ADJ_UH <= '0';
		wait for 20 ns;
		
		ADJ_UH <= '1';
		wait for 20 ns;
		ADJ_UH <= '0';
		wait for 20 ns;
		
		ADJ_UH <= '1';
		wait for 20 ns;
		ADJ_UH <= '0';
		wait for 20 ns;
		
		ADJ_UM <= '1';
		wait for 20 ns;
		ADJ_UM <= '0';
		wait for 20 ns;
		
		ADJ_UM <= '1';
		wait for 20 ns;
		ADJ_UM <= '0';
		wait for 20 ns;
		
		ADJ_UM <= '1';
		wait for 20 ns;
		ADJ_UM <= '0';
		wait for 20 ns;
		
		ADJ_UM <= '1';
		wait for 20 ns;
		ADJ_UM <= '0';
		wait for 20 ns;
		
		ADJ_UM <= '1';
		wait for 20 ns;
		ADJ_UM <= '0';
		wait for 20 ns;
		
		ADJ_UM <= '1';
		wait for 20 ns;
		ADJ_UM <= '0';
		wait for 20 ns;
		
		ADJ_UM <= '1';
		wait for 20 ns;
		ADJ_UM <= '0';
		wait for 20 ns;
		
		ADJ_UM <= '1';
		wait for 20 ns;
		ADJ_UM <= '0';
		wait for 20 ns;
		
		-- Retorna o funcionamento do relógio
		LAP_ENABLE <= '1';
   end process;

END;
