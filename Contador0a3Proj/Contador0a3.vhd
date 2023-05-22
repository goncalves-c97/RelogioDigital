----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:37:17 05/18/2023 
-- Design Name: 
-- Module Name:    Contador0a3 - Behavioral 
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
use ieee.numeric_std.all;

entity Contador0a3 is
	Port
	(
		CLK, RST: in STD_LOGIC;
		ADJUST: in STD_LOGIC;
		LAP_ENABLE: in STD_LOGIC;
		LAP: out STD_LOGIC;
		OUTPUT: out STD_LOGIC_VECTOR (3 downto 0)
	);
end Contador0a3;

architecture Behavioral of Contador0a3 is
	signal internal_count : std_logic_vector(3 downto 0) := "0000";
	signal adjust_debounce : std_logic := '0';
begin
    process (CLK, RST, ADJUST)
    begin
        if RST = '1' then
            internal_count <= "0000";
		  elsif rising_edge(CLK) then
				if LAP_ENABLE = '1' then
					if internal_count = "0011" then
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
				if internal_count = "0011" then
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
end architecture Behavioral;