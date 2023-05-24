
-- VHDL Instantiation Created from source file ContadorHoraMinuto.vhd -- 22:57:13 05/23/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_ContadorHoraMinuto: ContadorHoraMinuto PORT MAP(
		CLK => ,
		RST => ,
		ADJ_DH => ,
		ADJ_UH => ,
		ADJ_DM => ,
		ADJ_UM => ,
		LAP_ENABLE => ,
		LAP => ,
		OUTPUT => 
	);


