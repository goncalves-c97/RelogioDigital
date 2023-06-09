----------------------------------------------------------------------------------
-- Company: Faculdade Engenheiro Salvador Arena
--
-- Engineers: Carlos Adonias
--			  	  Carlos Goncalves
--			 	  Gabriel Teixeira
-- 		 	  Johnny Messias
--
-- Teacher: Filippo Valiante
-- Create Date:    22:36:58 19/05/2023 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Demux4x1bit is
    Port ( INPUT : in  STD_LOGIC;
           OUT1 : out  STD_LOGIC;
           OUT2 : out  STD_LOGIC;
           OUT3 : out  STD_LOGIC;
           OUT4 : out  STD_LOGIC;
           SEL : in  STD_LOGIC_VECTOR (1 downto 0));
end Demux4x1bit;

architecture Behavioral of Demux4x1bit is
begin
	process (INPUT, SEL)
	begin
		case SEL is
			when "00" =>
				OUT1 <= INPUT;
				OUT2 <= '0';
				OUT3 <= '0';
				OUT4 <= '0';
			when "01" =>
				OUT1 <= '0';
				OUT2 <= INPUT;
				OUT3 <= '0';
				OUT4 <= '0';
			when "10" =>
				OUT1 <= '0';
				OUT2 <= '0';
				OUT3 <= INPUT;
				OUT4 <= '0';
			when "11" =>
				OUT1 <= '0';
				OUT2 <= '0';
				OUT3 <= '0';
				OUT4 <= INPUT;
			when others =>
                OUT1 <= '0';
                OUT2 <= '0';
                OUT3 <= '0';
                OUT4 <= '0';
		end case;
	end process;
end Behavioral;

