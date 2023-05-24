----------------------------------------------------------------------------------
-- Company: Faculdade Engenheiro Salvador Arena
--
-- Engineers: Carlos Adonias
--			  	  Carlos Goncalves
--			 	  Gabriel Teixeira
-- 		 	  Johnny Messias
--
-- Teacher: Filippo Valiante
-- Create Date:    19:40:51 23/05/2023
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RelogioDigitalFD is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           MODE : in  STD_LOGIC;
           SHIFT : in  STD_LOGIC;
           INCREMENT : in  STD_LOGIC;
           DISPLAY : out  STD_LOGIC_VECTOR (6 downto 0);
           DOT : out  STD_LOGIC;
           DISP_SUPPLY : out  STD_LOGIC_VECTOR (3 downto 0));
end RelogioDigitalFD;

architecture Behavioral of RelogioDigitalFD is

	COMPONENT DivisorFrequencia_10Hz
	PORT(
		CLK : IN std_logic;          
		DIV_CLK : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT DivisorFrequencia_60Hz
	PORT(
		CLK : IN std_logic;          
		DIV_CLK : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT ContadorHoraMinuto
	PORT(
		CLK : IN std_logic;
		RST : IN std_logic;
		ADJ_DH : IN std_logic;
		ADJ_UH : IN std_logic;
		ADJ_DM : IN std_logic;
		ADJ_UM : IN std_logic;
		LAP_ENABLE : IN std_logic;          
		LAP : OUT std_logic;
		OUTPUT : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;
	
	COMPONENT ControladorDemuxDisplay
	PORT(
		INPUT : IN std_logic;
		SHIFT : IN std_logic;
		RST : IN std_logic;
		LAP_ENABLE : IN std_logic;
		DOT_SEL : IN std_logic_vector(1 downto 0);          
		COUNT : OUT std_logic_vector(1 downto 0);
		OUT1 : OUT std_logic;
		OUT2 : OUT std_logic;
		OUT3 : OUT std_logic;
		OUT4 : OUT std_logic;
		DOT : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT ControladorDemux
	PORT(
		INPUT : IN std_logic;
		SHIFT : IN std_logic;
		RST : IN std_logic;          
		COUNT : OUT std_logic_vector(1 downto 0);
		OUT1 : OUT std_logic;
		OUT2 : OUT std_logic;
		OUT3 : OUT std_logic;
		OUT4 : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT decoder7seg
	PORT(
		INPUT : IN std_logic_vector(3 downto 0);
		SEL : IN std_logic_vector(3 downto 0);          
		OUTPUT : OUT std_logic_vector(6 downto 0);
		DISP : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
    
	COMPONENT mux4x4
	PORT(
		E0 : IN std_logic_vector(3 downto 0);
		E1 : IN std_logic_vector(3 downto 0);
		E2 : IN std_logic_vector(3 downto 0);
		E3 : IN std_logic_vector(3 downto 0);
		SEL : IN std_logic_vector(1 downto 0);          
		OUTPUT : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	COMPONENT reg4bits
	PORT(
		INPUT : IN std_logic_vector(3 downto 0);
		EN : IN std_logic;
		CLR : IN std_logic;
		CLK : IN std_logic;          
		OUTPUT : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	signal freq10Hz_contador : std_logic;
	signal aj_um_contador : std_logic;
	signal aj_dm_contador : std_logic;
	signal aj_uh_contador : std_logic;
	signal aj_dh_contador : std_logic;
	signal contador_um_mux : std_logic_vector(3 downto 0);
	signal contador_dm_mux : std_logic_vector(3 downto 0);
	signal contador_uh_mux : std_logic_vector(3 downto 0);
	signal contador_dh_mux : std_logic_vector(3 downto 0);
	signal mux_reg : std_logic_vector(3 downto 0);
	signal reg_decoder : std_logic_vector(3 downto 0);
	signal aj_ctrlDisplay : std_logic_vector(1 downto 0);
	signal freq60Hz_ctrlDisplay : std_logic;
	signal ctrlDisplay_mux : std_logic_vector(1 downto 0);
	signal nc_1 : std_logic; 
	signal nc_2 : std_logic_vector(3 downto 0);
begin

	Inst_DivisorFrequencia_10Hz: DivisorFrequencia_10Hz PORT MAP(
		CLK => CLK,
		DIV_CLK => freq10Hz_contador
	);

	Inst_DivisorFrequencia_60Hz: DivisorFrequencia_60Hz PORT MAP(
		CLK => CLK,
		DIV_CLK => freq60Hz_ctrlDisplay
	);
	
	Inst_ContadorHoraMinuto: ContadorHoraMinuto PORT MAP(
		CLK => freq10Hz_contador,
		RST => RST,
		ADJ_DH => aj_dh_contador,
		ADJ_UH => aj_uh_contador,
		ADJ_DM => aj_dm_contador,
		ADJ_UM => aj_um_contador,
		LAP_ENABLE => MODE,
		LAP => nc_1,
		OUTPUT(15 downto 12) => contador_dh_mux,
		OUTPUT(11 downto 8) => contador_uh_mux,
		OUTPUT(7 downto 4) => contador_dm_mux,
		OUTPUT(3 downto 0) => contador_um_mux
	);
	
	Inst_ControladorDemuxDisplay: ControladorDemuxDisplay PORT MAP(
		INPUT => '0',
		SHIFT => freq60Hz_ctrlDisplay,
		RST => RST,
		LAP_ENABLE => MODE,
		DOT_SEL => aj_ctrlDisplay,
		COUNT => ctrlDisplay_mux,
		OUT1 => DISP_SUPPLY(3),
		OUT2 => DISP_SUPPLY(2),
		OUT3 => DISP_SUPPLY(1),
		OUT4 => DISP_SUPPLY(0),
		DOT => DOT
	);
	
	Inst_ControladorDemux: ControladorDemux PORT MAP(
		INPUT => INCREMENT,
		SHIFT => SHIFT,
		RST => RST,
		COUNT => aj_ctrlDisplay,
		OUT1 => aj_um_contador,
		OUT2 => aj_dm_contador,
		OUT3 => aj_uh_contador,
		OUT4 => aj_dh_contador
	);
	
	Inst_decoder7seg: decoder7seg PORT MAP(
		INPUT => reg_decoder,
		OUTPUT => DISPLAY,
		SEL => "0000",
		DISP => nc_2
	);
	
	Inst_mux4x4: mux4x4 PORT MAP(
		E0 => contador_um_mux,
		E1 => contador_dm_mux,
		E2 => contador_uh_mux,
		E3 => contador_dh_mux,
		OUTPUT => mux_reg,
		SEL => ctrlDisplay_mux
	);
	
	Inst_reg4bits: reg4bits PORT MAP(
		INPUT => mux_reg,
		OUTPUT => reg_decoder,
		EN => '1',
		CLR => RST,
		CLK => CLK 
	);

end Behavioral;

