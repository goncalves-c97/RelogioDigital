----------------------------------------------------------------------------------
-- Company: Faculdade Engenheiro Salvador Arena
--
-- Engineers: Carlos Adonias
--			  	  Carlos Goncalves
--			 	  Gabriel Teixeira
-- 		 	  Johnny Messias
--
-- Teacher: Filippo Valiante
-- Create Date:    20:42:13 18/05/2023 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity Contador0a2 is
	Port
	(
		CLK, RST: in STD_LOGIC;
		ADJUST: in STD_LOGIC;
		LAP_ENABLE: in STD_LOGIC;
		LAP: out STD_LOGIC;
		MAX: out STD_LOGIC;
		OUTPUT: out STD_LOGIC_VECTOR (3 downto 0)
	);
end Contador0a2;

architecture Behavioral of Contador0a2 is
	signal internal_count : std_logic_vector(3 downto 0) := "0000";
	signal adjust_debounce : std_logic := '0';
begin
    process (CLK, RST, LAP_ENABLE, ADJUST, internal_count)
    begin
        if RST = '1' then
			internal_count <= "0000";
		  elsif rising_edge(CLK) then
				if LAP_ENABLE = '1' then
					if internal_count = "0010" then
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
				if internal_count = "0010" then
					 internal_count <= "0000";
					 
					 if LAP_ENABLE = '1' then
						LAP <= '1';
					 end if;
				else
					 internal_count <= std_logic_vector(unsigned(internal_count) + 1);
					 LAP <= '0';
				end if;
			elsif LAP_ENABLE = '0' and  adjust_debounce = '1' and ADJUST = '0' then
				adjust_debounce <= '0';
			end if;
		  if internal_count = "0010" then
		     MAX <= '1';
		  else
		     MAX <= '0';
		  end if;
    end process;
					 
    OUTPUT <= internal_count;
end architecture Behavioral;