----------------------------------------------------------------------------------
-- Company: Faculdade Engenheiro Salvador Arena
--
-- Engineers: Carlos Adonias
--			  	  Carlos Goncalves
--			 	  Gabriel Teixeira
-- 		 	  Johnny Messias
--
-- Teacher: Filippo Valiante
-- Create Date:    20:49:02 18/05/2023 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ContadorMinutos is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
			  LAP_ENABLE : in STD_LOGIC;
			  ADJ_UM, ADJ_DM : in STD_LOGIC;
           LAP : out  STD_LOGIC;
           OUTPUT : out  STD_LOGIC_VECTOR (7 downto 0));
end ContadorMinutos;

architecture Behavioral of ContadorMinutos is

COMPONENT Contador0a5
	PORT(
		CLK : IN std_logic;
		RST : IN std_logic;  
		ADJUST : IN std_logic;  
      LAP_ENABLE : in STD_LOGIC;		
		LAP : OUT std_logic;
		OUTPUT : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
COMPONENT Contador0a9
	PORT(
		CLK : IN std_logic;
		RST : IN std_logic;
		ADJUST : IN std_logic;
      LAP_ENABLE : in STD_LOGIC;		
		LAP : OUT std_logic;
		OUTPUT : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	signal um_dm: std_logic;
begin

Inst_Contador0a5: Contador0a5 PORT MAP(
		CLK => um_dm,
		RST => RST,
		ADJUST => ADJ_DM,
		LAP_ENABLE => LAP_ENABLE,
		LAP => LAP,
		OUTPUT => OUTPUT(7 downto 4)
	);
	
Inst_Contador0a9: Contador0a9 PORT MAP(
		CLK => CLK, 
		RST => RST, 
		ADJUST => ADJ_UM,
		LAP_ENABLE => LAP_ENABLE,
		LAP => um_dm, 
		OUTPUT => OUTPUT(3 downto 0)
	);

end Behavioral;

