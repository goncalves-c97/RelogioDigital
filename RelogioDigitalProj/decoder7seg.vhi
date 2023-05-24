
-- VHDL Instantiation Created from source file decoder7seg.vhd -- 22:58:47 05/23/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT decoder7seg
	PORT(
		INPUT : IN std_logic_vector(3 downto 0);
		SEL : IN std_logic_vector(3 downto 0);          
		OUTPUT : OUT std_logic_vector(6 downto 0);
		DISP : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_decoder7seg: decoder7seg PORT MAP(
		INPUT => ,
		OUTPUT => ,
		SEL => ,
		DISP => 
	);


