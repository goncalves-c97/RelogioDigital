
-- VHDL Instantiation Created from source file ContadorHoras.vhd -- 14:58:58 05/21/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ContadorHoras
	PORT(
		CLK : IN std_logic;
		RST : IN std_logic;          
		LAP : OUT std_logic;
		OUTPUT : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_ContadorHoras: ContadorHoras PORT MAP(
		CLK => ,
		RST => ,
		LAP => ,
		OUTPUT => 
	);


