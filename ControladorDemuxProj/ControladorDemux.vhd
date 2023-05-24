----------------------------------------------------------------------------------
-- Company: Faculdade Engenheiro Salvador Arena
--
-- Engineers: Carlos Adonias
--			  	  Carlos Goncalves
--			 	  Gabriel Teixeira
-- 		 	  Johnny Messias
--
-- Teacher: Filippo Valiante
-- Create Date:    22:58:40 19/05/2023 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ControladorDemux is
    Port ( INPUT : in   STD_LOGIC;
           SHIFT : in   STD_LOGIC;
			  RST   : in   STD_LOGIC;
			  COUNT : out STD_LOGIC_VECTOR(1 downto 0);
           OUT1  : out  STD_LOGIC;
           OUT2  : out  STD_LOGIC;
           OUT3  : out  STD_LOGIC;
           OUT4  : out  STD_LOGIC);
end ControladorDemux;

architecture Behavioral of ControladorDemux is

	COMPONENT Contador0a3
	PORT(
		CLK : IN std_logic;
		RST : IN std_logic;
		LAP_ENABLE: IN std_logic;
		ADJUST: IN std_logic;
		LAP : OUT std_logic;
		OUTPUT : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Demux4x1bit
	PORT(
		INPUT : IN std_logic;
		SEL : IN std_logic_vector(1 downto 0);          
		OUT1 : OUT std_logic;
		OUT2 : OUT std_logic;
		OUT3 : OUT std_logic;
		OUT4 : OUT std_logic
		);
	END COMPONENT;
	
	signal cont_demux : std_logic_vector (1 downto 0);
	signal unused_signal : std_logic := '0';
	signal unused_signal_2 : std_logic;
	signal unused_signal_3: std_logic;
begin

	Inst_Contador0a3: Contador0a3 PORT MAP(
		CLK => SHIFT,
		RST => RST,
		LAP_ENABLE => '1',
		LAP => unused_signal,
		ADJUST => INPUT,
		OUTPUT(0) => cont_demux(0),
		OUTPUT(1) => cont_demux(1),
		OUTPUT(2) => unused_signal_2,
		OUTPUT(3) => unused_signal_3
	);
	
	Inst_Demux4x1bit: Demux4x1bit PORT MAP(
		INPUT => INPUT,
		OUT1 => OUT1,
		OUT2 => OUT2,
		OUT3 => OUT3,
		OUT4 => OUT4,
		SEL => cont_demux
	);
	
	COUNT <= cont_demux;
end Behavioral;

