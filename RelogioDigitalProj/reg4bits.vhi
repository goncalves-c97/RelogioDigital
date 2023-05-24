
-- VHDL Instantiation Created from source file reg4bits.vhd -- 23:00:39 05/23/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT reg4bits
	PORT(
		INPUT : IN std_logic_vector(3 downto 0);
		EN : IN std_logic;
		CLR : IN std_logic;
		CLK : IN std_logic;          
		OUTPUT : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_reg4bits: reg4bits PORT MAP(
		INPUT => ,
		OUTPUT => ,
		EN => ,
		CLR => ,
		CLK => 
	);


