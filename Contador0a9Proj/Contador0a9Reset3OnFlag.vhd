----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:14:11 05/21/2023 
-- Design Name: 
-- Module Name:    Contador0a9Reset3OnFlag - Behavioral 
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


entity Contador0a9Reset3OnFlag is
	Port
	(
		CLK, RST, LAP_ENABLE, RST_FLAG, ADJUST: in STD_LOGIC;
		LAP: out STD_LOGIC;
		OUTPUT: out STD_LOGIC_VECTOR (3 downto 0)
	);
end Contador0a9Reset3OnFlag;

architecture Behavioral of Contador0a9Reset3OnFlag is
	signal internal_count : std_logic_vector(3 downto 0) := "0000";
	signal adjust_debounce : std_logic := '0';
begin
	process (CLK, RST, RST_FLAG, ADJUST)
    begin
        if RST = '1' then
            internal_count <= "0000";
        elsif rising_edge(CLK) then
				if LAP_ENABLE = '1' then
					if RST_FLAG = '1' and internal_count = "0011" then
						 internal_count <= "0000";
						 if LAP_ENABLE = '1' then 
							LAP <= '1';
						 end if;
					elsif internal_count = "1001" then
						 internal_count <= "0000";
						 if LAP_ENABLE = '1' then 
							LAP <= '1';
						 end if;
					else
						 internal_count <= std_logic_vector(unsigned(internal_count) + 1);
						 LAP <= '0';
					end if;
				end if;
			end if;
			if LAP_ENABLE = '0' and adjust_debounce = '0' and ADJUST = '1' then
				adjust_debounce <= '1';
				if RST_FLAG = '1' and internal_count = "0011" then
					 internal_count <= "0000";
					 if LAP_ENABLE = '1' then 
						LAP <= '1';
					 end if;
				elsif internal_count = "1001" then
					 internal_count <= "0000";
					 if LAP_ENABLE = '1' then 
						LAP <= '1';
					 end if;
				else
					 internal_count <= std_logic_vector(unsigned(internal_count) + 1);
					 LAP <= '0';
				end if;
			elsif LAP_ENABLE = '0' and adjust_debounce = '1' and ADJUST = '0' then
				adjust_debounce <= '0';
			end if;
    end process;

    OUTPUT <= internal_count;
end Behavioral;

