
-- VHDL Instantiation Created from source file ControladorDemuxDisplay.vhd -- 22:57:45 05/23/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_ControladorDemuxDisplay: ControladorDemuxDisplay PORT MAP(
		INPUT => ,
		SHIFT => ,
		RST => ,
		LAP_ENABLE => ,
		DOT_SEL => ,
		COUNT => ,
		OUT1 => ,
		OUT2 => ,
		OUT3 => ,
		OUT4 => ,
		DOT => 
	);


