--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:00:18 05/24/2023
-- Design Name:   
-- Module Name:   /home/ise/Documents/RelogioDigitalProj/tb_relogio_digital_FD.vhd
-- Project Name:  RelogioDigitalProj
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RelogioDigitalFD
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
 
ENTITY tb_relogio_digital_FD IS
END tb_relogio_digital_FD;
 
ARCHITECTURE behavior OF tb_relogio_digital_FD IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RelogioDigitalFD
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         MODE : IN  std_logic;
         SHIFT : IN  std_logic;
         INCREMENT : IN  std_logic;
         DISPLAY : OUT  std_logic_vector(6 downto 0);
         DOT : OUT  std_logic;
         DISP_SUPPLY : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal MODE : std_logic := '1';
   signal SHIFT : std_logic := '0';
   signal INCREMENT : std_logic := '0';

 	--Outputs
   signal DISPLAY : std_logic_vector(6 downto 0);
   signal DOT : std_logic;
   signal DISP_SUPPLY : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RelogioDigitalFD PORT MAP (
          CLK => CLK,
          RST => RST,
          MODE => MODE,
          SHIFT => SHIFT,
          INCREMENT => INCREMENT,
          DISPLAY => DISPLAY,
          DOT => DOT,
          DISP_SUPPLY => DISP_SUPPLY
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
		-- OBS: para a simulação funcionar e poder ser visualizada em simulação:
		-- * O divisor de 60 Hz deve ser ajustado para 6.25MHz
		-- * O divisor de 10 Hz deve ser ajustado para 625kHz
		
      -- Roda um ciclo inteiro e passa +- meia hora
      wait for 1200 us;	
		
		-- Pausa o relógio para mudar a hora (Bug adiciona 1 na hora)
		MODE <= '0';
		wait for 800 ns;
		
		SHIFT <= '1'; wait for 20 ns; SHIFT <= '0'; wait for 800 ns;
		SHIFT <= '1'; wait for 20 ns; SHIFT <= '0'; wait for 800 ns;
		SHIFT <= '1'; wait for 20 ns; SHIFT <= '0'; wait for 800 ns;
		SHIFT <= '1'; wait for 20 ns; SHIFT <= '0'; wait for 800 ns;
		
		INCREMENT <= '1'; wait for 20 ns; INCREMENT <= '0'; wait for 800 ns;
		INCREMENT <= '1'; wait for 20 ns; INCREMENT <= '0'; wait for 800 ns;
		INCREMENT <= '1'; wait for 20 ns; INCREMENT <= '0'; wait for 800 ns;

		SHIFT <= '1'; wait for 20 ns; SHIFT <= '0'; wait for 800 ns;
		
		INCREMENT <= '1'; wait for 20 ns; INCREMENT <= '0'; wait for 800 ns;
		INCREMENT <= '1'; wait for 20 ns; INCREMENT <= '0'; wait for 800 ns;
		INCREMENT <= '1'; wait for 20 ns; INCREMENT <= '0'; wait for 800 ns;
		
		SHIFT <= '1'; wait for 20 ns; SHIFT <= '0'; wait for 800 ns;
		
		INCREMENT <= '1'; wait for 20 ns; INCREMENT <= '0'; wait for 800 ns;
		INCREMENT <= '1'; wait for 20 ns; INCREMENT <= '0'; wait for 800 ns;
		INCREMENT <= '1'; wait for 20 ns; INCREMENT <= '0'; wait for 800 ns;
		
		SHIFT <= '1'; wait for 20 ns; SHIFT <= '0'; wait for 800 ns;
		
		INCREMENT <= '1'; wait for 20 ns; INCREMENT <= '0'; wait for 800 ns;
		INCREMENT <= '1'; wait for 20 ns; INCREMENT <= '0'; wait for 800 ns;
		INCREMENT <= '1'; wait for 20 ns; INCREMENT <= '0'; wait for 800 ns;
		
		SHIFT <= '1'; wait for 20 ns; SHIFT <= '0'; wait for 800 ns;
		
		-- Retorna o funcionamento
		MODE <= '1';
		wait for 40 us;
		
		MODE <= '0';
		wait for 40 us;
		
   end process;

END;
