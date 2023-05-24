----------------------------------------------------------------------------------
-- Company: Faculdade Engenheiro Salvador Arena
--
-- Engineers: Carlos Adonias
--			  	  Carlos Goncalves
--			 	  Gabriel Teixeira
-- 		 	  Johnny Messias
--
-- Teacher: Filippo Valiante
-- Create Date:    19:50:09 23/05/2023 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4x4 is
    Port ( E0 : in  STD_LOGIC_VECTOR (3 downto 0);
           E1 : in  STD_LOGIC_VECTOR (3 downto 0);
           E2 : in  STD_LOGIC_VECTOR (3 downto 0);
           E3 : in  STD_LOGIC_VECTOR (3 downto 0);
           OUTPUT : out  STD_LOGIC_VECTOR (3 downto 0);
           SEL : in  STD_LOGIC_VECTOR (1 downto 0));
end mux4x4;

architecture Behavioral of mux4x4 is

begin
	process(E0, E1, E2, E3, SEL)
    begin
        case SEL is
            when "00" =>
                OUTPUT <= E0;
            when "01" =>
                OUTPUT <= E1;
            when "10" =>
                OUTPUT <= E2;
            when "11" =>
                OUTPUT <= E3;
			   when others =>
                OUTPUT <= (others => '0');
        end case;
    end process;
end Behavioral;

