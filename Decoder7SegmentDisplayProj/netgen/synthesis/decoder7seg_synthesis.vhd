--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: decoder7seg_synthesis.vhd
-- /___/   /\     Timestamp: Sat Mar 11 14:08:39 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm decoder7seg -w -dir netgen/synthesis -ofmt vhdl -sim decoder7seg.ngc decoder7seg_synthesis.vhd 
-- Device	: xc3s100e-4-cp132
-- Input file	: decoder7seg.ngc
-- Output file	: /home/ise/Documents/Decoder7SegmentDisplayProj/netgen/synthesis/decoder7seg_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: decoder7seg
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity decoder7seg is
  port (
    DISP : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    OUTPUT : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
    INPUT : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    SEL : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end decoder7seg;

architecture Structure of decoder7seg is
  signal DISP_0_OBUF_4 : STD_LOGIC; 
  signal DISP_1_OBUF_5 : STD_LOGIC; 
  signal DISP_2_OBUF_6 : STD_LOGIC; 
  signal DISP_3_OBUF_7 : STD_LOGIC; 
  signal INPUT_0_IBUF_12 : STD_LOGIC; 
  signal INPUT_1_IBUF_13 : STD_LOGIC; 
  signal INPUT_2_IBUF_14 : STD_LOGIC; 
  signal INPUT_3_IBUF_15 : STD_LOGIC; 
  signal OUTPUT_0_OBUF_23 : STD_LOGIC; 
  signal OUTPUT_1_OBUF_24 : STD_LOGIC; 
  signal OUTPUT_2_OBUF_25 : STD_LOGIC; 
  signal OUTPUT_3_OBUF_26 : STD_LOGIC; 
  signal OUTPUT_4_OBUF_27 : STD_LOGIC; 
  signal OUTPUT_5_OBUF_28 : STD_LOGIC; 
  signal OUTPUT_6_OBUF_29 : STD_LOGIC; 
  signal SEL_0_IBUF_34 : STD_LOGIC; 
  signal SEL_1_IBUF_35 : STD_LOGIC; 
  signal SEL_2_IBUF_36 : STD_LOGIC; 
  signal SEL_3_IBUF_37 : STD_LOGIC; 
begin
  Mrom_OUTPUT21 : LUT4
    generic map(
      INIT => X"445C"
    )
    port map (
      I0 => INPUT_3_IBUF_15,
      I1 => INPUT_0_IBUF_12,
      I2 => INPUT_2_IBUF_14,
      I3 => INPUT_1_IBUF_13,
      O => OUTPUT_2_OBUF_25
    );
  Mrom_OUTPUT41 : LUT4
    generic map(
      INIT => X"80C2"
    )
    port map (
      I0 => INPUT_1_IBUF_13,
      I1 => INPUT_3_IBUF_15,
      I2 => INPUT_2_IBUF_14,
      I3 => INPUT_0_IBUF_12,
      O => OUTPUT_4_OBUF_27
    );
  Mrom_OUTPUT51 : LUT4
    generic map(
      INIT => X"E448"
    )
    port map (
      I0 => INPUT_0_IBUF_12,
      I1 => INPUT_2_IBUF_14,
      I2 => INPUT_1_IBUF_13,
      I3 => INPUT_3_IBUF_15,
      O => OUTPUT_5_OBUF_28
    );
  Mrom_OUTPUT111 : LUT4
    generic map(
      INIT => X"6032"
    )
    port map (
      I0 => INPUT_1_IBUF_13,
      I1 => INPUT_3_IBUF_15,
      I2 => INPUT_0_IBUF_12,
      I3 => INPUT_2_IBUF_14,
      O => OUTPUT_1_OBUF_24
    );
  Mrom_OUTPUT11 : LUT4
    generic map(
      INIT => X"0941"
    )
    port map (
      I0 => INPUT_1_IBUF_13,
      I1 => INPUT_2_IBUF_14,
      I2 => INPUT_3_IBUF_15,
      I3 => INPUT_0_IBUF_12,
      O => OUTPUT_0_OBUF_23
    );
  Mrom_OUTPUT31 : LUT4
    generic map(
      INIT => X"A118"
    )
    port map (
      I0 => INPUT_1_IBUF_13,
      I1 => INPUT_3_IBUF_15,
      I2 => INPUT_0_IBUF_12,
      I3 => INPUT_2_IBUF_14,
      O => OUTPUT_3_OBUF_26
    );
  Mrom_OUTPUT61 : LUT4
    generic map(
      INIT => X"2812"
    )
    port map (
      I0 => INPUT_0_IBUF_12,
      I1 => INPUT_1_IBUF_13,
      I2 => INPUT_2_IBUF_14,
      I3 => INPUT_3_IBUF_15,
      O => OUTPUT_6_OBUF_29
    );
  INPUT_3_IBUF : IBUF
    port map (
      I => INPUT(3),
      O => INPUT_3_IBUF_15
    );
  INPUT_2_IBUF : IBUF
    port map (
      I => INPUT(2),
      O => INPUT_2_IBUF_14
    );
  INPUT_1_IBUF : IBUF
    port map (
      I => INPUT(1),
      O => INPUT_1_IBUF_13
    );
  INPUT_0_IBUF : IBUF
    port map (
      I => INPUT(0),
      O => INPUT_0_IBUF_12
    );
  SEL_3_IBUF : IBUF
    port map (
      I => SEL(3),
      O => SEL_3_IBUF_37
    );
  SEL_2_IBUF : IBUF
    port map (
      I => SEL(2),
      O => SEL_2_IBUF_36
    );
  SEL_1_IBUF : IBUF
    port map (
      I => SEL(1),
      O => SEL_1_IBUF_35
    );
  SEL_0_IBUF : IBUF
    port map (
      I => SEL(0),
      O => SEL_0_IBUF_34
    );
  DISP_3_OBUF : OBUF
    port map (
      I => DISP_3_OBUF_7,
      O => DISP(3)
    );
  DISP_2_OBUF : OBUF
    port map (
      I => DISP_2_OBUF_6,
      O => DISP(2)
    );
  DISP_1_OBUF : OBUF
    port map (
      I => DISP_1_OBUF_5,
      O => DISP(1)
    );
  DISP_0_OBUF : OBUF
    port map (
      I => DISP_0_OBUF_4,
      O => DISP(0)
    );
  OUTPUT_6_OBUF : OBUF
    port map (
      I => OUTPUT_6_OBUF_29,
      O => OUTPUT(6)
    );
  OUTPUT_5_OBUF : OBUF
    port map (
      I => OUTPUT_5_OBUF_28,
      O => OUTPUT(5)
    );
  OUTPUT_4_OBUF : OBUF
    port map (
      I => OUTPUT_4_OBUF_27,
      O => OUTPUT(4)
    );
  OUTPUT_3_OBUF : OBUF
    port map (
      I => OUTPUT_3_OBUF_26,
      O => OUTPUT(3)
    );
  OUTPUT_2_OBUF : OBUF
    port map (
      I => OUTPUT_2_OBUF_25,
      O => OUTPUT(2)
    );
  OUTPUT_1_OBUF : OBUF
    port map (
      I => OUTPUT_1_OBUF_24,
      O => OUTPUT(1)
    );
  OUTPUT_0_OBUF : OBUF
    port map (
      I => OUTPUT_0_OBUF_23,
      O => OUTPUT(0)
    );
  Mrom_DISP31_INV_0 : INV
    port map (
      I => SEL_3_IBUF_37,
      O => DISP_3_OBUF_7
    );
  Mrom_DISP21_INV_0 : INV
    port map (
      I => SEL_2_IBUF_36,
      O => DISP_2_OBUF_6
    );
  Mrom_DISP111_INV_0 : INV
    port map (
      I => SEL_1_IBUF_35,
      O => DISP_1_OBUF_5
    );
  Mrom_DISP11_INV_0 : INV
    port map (
      I => SEL_0_IBUF_34,
      O => DISP_0_OBUF_4
    );

end Structure;

