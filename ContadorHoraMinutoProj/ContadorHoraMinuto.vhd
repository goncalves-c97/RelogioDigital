----------------------------------------------------------------------------------
-- Company: Faculdade Engenheiro Salvador Arena
--
-- Engineers: Carlos Adonias
--			  	  Carlos Goncalves
--			 	  Gabriel Teixeira
-- 		 	  Johnny Messias
--
-- Teacher: Filippo Valiante
-- Create Date:    11:57:36 21/05/2023 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ContadorHoraMinuto is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
			  ADJ_DH, ADJ_UH, ADJ_DM, ADJ_UM : in  STD_LOGIC;
			  LAP_ENABLE : in STD_LOGIC;
           LAP : out  STD_LOGIC;
			  OUTPUT : out  STD_LOGIC_VECTOR (15 downto 0));
end ContadorHoraMinuto;

architecture Behavioral of ContadorHoraMinuto is

	COMPONENT ContadorHoras
	PORT(
		CLK : IN std_logic;
		RST : IN std_logic; 
		ADJ_DH, ADJ_UH : IN STD_LOGIC;
		LAP_ENABLE : in STD_LOGIC;
		LAP : OUT std_logic;
		OUTPUT : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT ContadorMinutos
	PORT(
		CLK : IN std_logic;
		RST : IN std_logic;
		ADJ_DM, ADJ_UM : IN STD_LOGIC;
      LAP_ENABLE : in STD_LOGIC;		
		LAP : OUT std_logic;
		OUTPUT : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	signal min_hora : std_logic;
begin

	Inst_ContadorHoras: ContadorHoras PORT MAP(
		CLK => min_hora,
		RST => RST,
		ADJ_DH => ADJ_DH,
		ADJ_UH => ADJ_UH,
		LAP_ENABLE => LAP_ENABLE,
		LAP => LAP,
		OUTPUT => OUTPUT(15 downto 8)
	);
	
	Inst_ContadorMinutos: ContadorMinutos PORT MAP(
		CLK => CLK,
		RST => RST,
		ADJ_DM => ADJ_DM,
		ADJ_UM => ADJ_UM,
		LAP_ENABLE => LAP_ENABLE,
		LAP => min_hora,
		OUTPUT => OUTPUT(7 downto 0)
	);

end Behavioral;

