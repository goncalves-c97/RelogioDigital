----------------------------------------------------------------------------------
-- Company: Faculdade Engenheiro Salvador Arena
--
-- Engineers: Carlos Adonias
--			  	  Carlos Goncalves
--			 	  Gabriel Teixeira
-- 		 	  Johnny Messias
--
-- Teacher: Filippo Valiante
-- Create Date:    22:32:51 24/05/2023 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Demux4x1bit_rest1 is
Port ( INPUT : in  STD_LOGIC;
           OUT1 : out  STD_LOGIC;
           OUT2 : out  STD_LOGIC;
           OUT3 : out  STD_LOGIC;
           OUT4 : out  STD_LOGIC;
           SEL : in  STD_LOGIC_VECTOR (1 downto 0));
end Demux4x1bit_rest1;

architecture Behavioral of Demux4x1bit_rest1 is

begin
process (INPUT, SEL)
	begin
		case SEL is
			when "00" =>
				OUT1 <= INPUT;
				OUT2 <= '1';
				OUT3 <= '1';
				OUT4 <= '1';
			when "01" =>
				OUT1 <= '1';
				OUT2 <= INPUT;
				OUT3 <= '1';
				OUT4 <= '1';
			when "10" =>
				OUT1 <= '1';
				OUT2 <= '1';
				OUT3 <= INPUT;
				OUT4 <= '1';
			when "11" =>
				OUT1 <= '1';
				OUT2 <= '1';
				OUT3 <= '1';
				OUT4 <= INPUT;
			when others =>
                OUT1 <= '1';
                OUT2 <= '1';
                OUT3 <= '1';
                OUT4 <= '1';
		end case;
	end process;
end Behavioral;

