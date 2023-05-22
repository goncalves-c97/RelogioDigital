
-- VHDL Instantiation Created from source file Demux4x1bit.vhd -- 02:00:58 05/19/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Demux4x1bit
	PORT(
		INPUT : IN std_logic;
		SEL : IN std_logic_vector(1 downto 0);          
		OUT1 : OUT std_logic;
		OUT2 : OUT std_logic;
		OUT3 : OUT std_logic;
		OUT4 : OUT std_logic
		);
	END COMPONENT;

	Inst_Demux4x1bit: Demux4x1bit PORT MAP(
		INPUT => ,
		OUT1 => ,
		OUT2 => ,
		OUT3 => ,
		OUT4 => ,
		SEL => 
	);


