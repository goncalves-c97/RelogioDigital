----------------------------------------------------------------------------------
-- Company: Faculdade Engenheiro Salvador Arena
--
-- Engineers: Carlos Adonias
--			  	  Carlos Goncalves
--			 	  Gabriel Teixeira
-- 		 	  Johnny Messias
--
-- Teacher: Filippo Valiante
-- Create Date:    21:13:18 19/05/2023 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ContadorHoras is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
			  LAP_ENABLE : in STD_LOGIC;
			  ADJ_UH, ADJ_DH : in STD_LOGIC;
           LAP : out  STD_LOGIC;
           OUTPUT : out  STD_LOGIC_VECTOR (7 downto 0));
end ContadorHoras;

architecture Behavioral of ContadorHoras is

	COMPONENT Contador0a2
	PORT(
		CLK : IN std_logic;
		RST : IN std_logic; 
		ADJUST : IN std_logic;
		LAP_ENABLE : IN std_logic;
		MAX : OUT std_logic;
		LAP : OUT std_logic;
		OUTPUT : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Contador0a9Reset3OnFlag
	PORT(
		CLK : IN std_logic;
		RST : IN std_logic;
		RST_FLAG : IN std_logic;
		ADJUST : IN std_logic;
		LAP_ENABLE : IN std_logic;
		LAP : OUT std_logic;
		OUTPUT : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	signal uh_dh : std_logic;
	signal uh_at2horas : std_logic;
begin
	Inst_Contador0a2: Contador0a2 PORT MAP(
		CLK => uh_dh,
		RST => RST,
		ADJUST => ADJ_DH,
		MAX => uh_at2horas,
		LAP_ENABLE => LAP_ENABLE,
		LAP => LAP,
		OUTPUT => OUTPUT(7 downto 4)
	);
	
	Inst_Contador0a9Reset3OnFlag: Contador0a9Reset3OnFlag PORT MAP(
		CLK => CLK,
		RST => RST,
		RST_FLAG => uh_at2horas,
		ADJUST => ADJ_UH,
		LAP_ENABLE => LAP_ENABLE,
		LAP => uh_dh,
		OUTPUT => OUTPUT(3 downto 0)
	);

end Behavioral;

