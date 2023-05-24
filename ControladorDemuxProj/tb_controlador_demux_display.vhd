--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:17:18 05/24/2023
-- Design Name:   
-- Module Name:   /home/ise/Documents/ControladorDemuxProj/tb_controlador_demux_display.vhd
-- Project Name:  ControladorDemuxProj
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ControladorDemuxDisplay
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
 
ENTITY tb_controlador_demux_display IS
END tb_controlador_demux_display;
 
ARCHITECTURE behavior OF tb_controlador_demux_display IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ControladorDemuxDisplay
    PORT(
         INPUT : IN  std_logic;
         SHIFT : IN  std_logic;
         RST : IN  std_logic;
         LAP_ENABLE : IN  std_logic;
         DOT_SEL : IN  std_logic_vector(1 downto 0);
         COUNT : OUT  std_logic_vector(1 downto 0);
         OUT1 : OUT  std_logic;
         OUT2 : OUT  std_logic;
         OUT3 : OUT  std_logic;
         OUT4 : OUT  std_logic;
         DOT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal INPUT : std_logic := '0';
   signal SHIFT : std_logic := '0';
   signal RST : std_logic := '0';
   signal LAP_ENABLE : std_logic := '1';
   signal DOT_SEL : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal COUNT : std_logic_vector(1 downto 0);
   signal OUT1 : std_logic;
   signal OUT2 : std_logic;
   signal OUT3 : std_logic;
   signal OUT4 : std_logic;
   signal DOT : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ControladorDemuxDisplay PORT MAP (
          INPUT => INPUT,
          SHIFT => SHIFT,
          RST => RST,
          LAP_ENABLE => LAP_ENABLE,
          DOT_SEL => DOT_SEL,
          COUNT => COUNT,
          OUT1 => OUT1,
          OUT2 => OUT2,
          OUT3 => OUT3,
          OUT4 => OUT4,
          DOT => DOT
        );

   -- Clock process definitions
   CLK_process :process
   begin
		SHIFT <= '0';
		wait for CLK_period/2;
		SHIFT <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;

		LAP_ENABLE <= '0';
		
		wait for 20 ns;
		
		DOT_SEL <= "01";
		
		wait for 20 ns;
		
		DOT_SEL <= "10";
		
		wait for 20 ns;
		
		DOT_SEL <= "11";
   end process;

END;
