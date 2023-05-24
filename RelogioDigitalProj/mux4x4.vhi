
-- VHDL Instantiation Created from source file mux4x4.vhd -- 22:59:36 05/23/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_mux4x4: mux4x4 PORT MAP(
		E0 => ,
		E1 => ,
		E2 => ,
		E3 => ,
		OUTPUT => ,
		SEL => 
	);


