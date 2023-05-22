----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:33:51 05/19/2023 
-- Design Name: 
-- Module Name:    DivisorFrequencia - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity DivisorFrequencia_10Hz is
    Port ( CLK : in  STD_LOGIC;
			  DIV_CLK : out  STD_LOGIC);
end DivisorFrequencia_10Hz;

architecture Behavioral of DivisorFrequencia_10Hz is	 
	 signal counter : integer := 0;
	 --signal counter_limit : integer := 0;
	 --constant counter_limit_10Hz : integer := 50000000;
begin
	 process(CLK)
    begin
        if rising_edge(CLK) then
		  
            counter <= counter + 1;
				
				if(counter = 5000000) then
					counter <= 0;
					DIV_CLK <= '1';
				else
					DIV_CLK <= '0'; 
				end if;
				
        end if;
    end process;
end Behavioral;

-- Tentativa com ajuste da frequencia de saida
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;
--
--entity DivisorFrequencia_1Hz_10Hz is
--    Port ( CLK : in  STD_LOGIC;
--           FREQ_MODE : in  STD_LOGIC;
--			  DIV_CLK : out  STD_LOGIC);
--end DivisorFrequencia_1Hz_10Hz;
--
--architecture Behavioral of DivisorFrequencia_1Hz_10Hz is	 
--	 signal counter : integer := 0;
--	 -- signal counter_limit : integer := 0;
--	 constant counter_limit_10Hz : integer := 50000000;
--	 constant counter_limit_1Hz : integer := 500000000;
--begin
--	 process(CLK)
--    begin
--			-- FREQ_MODE = 1 = 10Hz
--			if rising_edge(FREQ_MODE) then
--				counter <= 0;
--			-- FREQ_MODE = 0 = 1 Hz 
--			elsif falling_edge(FREQ_MODE) then
--				counter <= 0;
--			end if;
--		
--        if rising_edge(CLK) then
--            counter <= counter + 1;
--            if (FREQ_MODE = '1') then
--					if(counter = counter_limit_10Hz) then
--						counter <= 0;
--						DIV_CLK <= '1';
--					else
--						DIV_CLK <= '0'; 
--					end if;
--				else
--					if(counter = counter_limit_1Hz) then
--						counter <= 0;
--						DIV_CLK <= '1';
--					else
--						DIV_CLK <= '0'; 
--					end if;
--				end if;
--        end if;
--    end process;
--end Behavioral;

