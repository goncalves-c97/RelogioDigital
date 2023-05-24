----------------------------------------------------------------------------------
-- Company: Faculdade Engenheiro Salvador Arena
--
-- Engineers: Carlos Adonias
--			  	  Carlos Goncalves
--			 	  Gabriel Teixeira
-- 		 	  Johnny Messias
--
-- Teacher: Filippo Valiante
-- Create Date:    19:01:27 23/05/2023 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ControladorDemuxDisplay is
	Port ( INPUT : in   STD_LOGIC;
          SHIFT : in   STD_LOGIC;
			 RST   : in   STD_LOGIC;
			 LAP_ENABLE: in   STD_LOGIC;
			 DOT_SEL : in STD_LOGIC_VECTOR(1 downto 0);
			 COUNT : out STD_LOGIC_VECTOR(1 downto 0);
          OUT1  : out  STD_LOGIC;
          OUT2  : out  STD_LOGIC;
          OUT3  : out  STD_LOGIC;
          OUT4  : out  STD_LOGIC;
			 DOT   : out  STD_LOGIC);
end ControladorDemuxDisplay;

architecture Behavioral of ControladorDemuxDisplay is

COMPONENT Contador0a3
	PORT(
		CLK : IN std_logic;
		RST : IN std_logic;
		ADJUST : IN std_logic;
		LAP_ENABLE: IN std_logic;
		LAP : OUT std_logic;
		OUTPUT : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Demux4x1bit_rest1
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
	signal unused_signal : std_logic;
	signal unused_signal_2 : std_logic;
	signal unused_signal_3: std_logic;
	
begin
	
	process(LAP_ENABLE, DOT_SEL, cont_demux)
	begin
		if LAP_ENABLE = '0' then
				case DOT_SEL is
					when "00" =>
						 if cont_demux = "00" then 
							DOT <= '0';
						 else
							DOT <= '1';
						 end if;
					when "01" =>
						 if cont_demux = "01" then 
							DOT <= '0';
						 else
							DOT <= '1';
						 end if;
					when "10" =>
						 if cont_demux = "10" then 
							DOT <= '0';
						 else
							DOT <= '1';
						 end if;
					when "11" =>
						 if cont_demux = "11" then 
							DOT <= '0';
						 else
							DOT <= '1';
						 end if;
					when others =>
						 DOT <= '1'; -- Default case
				end case;
		  else
				DOT <= '1';
		  end if;
	end process;
	
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
	
	Inst_Demux4x1bit_rest1: Demux4x1bit_rest1 PORT MAP(
		INPUT => INPUT,
		OUT1 => OUT1,
		OUT2 => OUT2,
		OUT3 => OUT3,
		OUT4 => OUT4,
		SEL => cont_demux
	);
	
	COUNT <= cont_demux;

end Behavioral;

