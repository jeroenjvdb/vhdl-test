--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.49d
--  \   \         Application: netgen
--  /   /         Filename: poorten_timesim.vhd
-- /___/   /\     Timestamp: Thu Oct 27 14:43:04 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf poorten.pcf -rpw 100 -tpw 0 -ar Structure -tm poorten -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim poorten.ncd poorten_timesim.vhd 
-- Device	: 6slx4csg225-3 (PRODUCTION 1.23 2012-12-04)
-- Input file	: poorten.ncd
-- Output file	: D:\school\SCH-IW_EI\elektronica\digitale\labo\working_directory\ISE1\netgen\par\poorten_timesim.vhd
-- # of Entities	: 1
-- Design Name	: poorten
-- Xilinx	: D:\programma's\xilinx\14.4\ISE_DS\ISE\
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity poorten is
  port (
    inA : in STD_LOGIC := 'X'; 
    inB : in STD_LOGIC := 'X'; 
    outAND : out STD_LOGIC; 
    outOR : out STD_LOGIC; 
    outNot : out STD_LOGIC; 
    outNAND : out STD_LOGIC; 
    outNOR : out STD_LOGIC 
  );
end poorten;

architecture Structure of poorten is
  signal outNAND_OBUF_34 : STD_LOGIC; 
  signal outNot_OBUF_35 : STD_LOGIC; 
  signal inB_IBUF_0 : STD_LOGIC; 
  signal outNOR_OBUF_0 : STD_LOGIC; 
  signal outAND_OBUF_39 : STD_LOGIC; 
  signal outOR_OBUF_0 : STD_LOGIC; 
  signal ProtoComp3_IINV_OUT : STD_LOGIC; 
  signal outNot_OBUF_non_inverted : STD_LOGIC; 
  signal inB_IBUF_15 : STD_LOGIC; 
  signal outOR_OBUF_24 : STD_LOGIC; 
  signal outNOR_OBUF_17 : STD_LOGIC; 
  signal NlwBufferSignal_outNOR_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_outNAND_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_outOR_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_outAND_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_outNot_OBUF_I : STD_LOGIC; 
begin
  inA_IBUF : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 202 ps
    )
    port map (
      O => outNot_OBUF_non_inverted,
      I => inA
    );
  ProtoComp3_IMUX : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 202 ps
    )
    port map (
      I => ProtoComp3_IINV_OUT,
      O => outNot_OBUF_35
    );
  ProtoComp3_IINV : X_INV
    generic map(
      LOC => "PAD121",
      PATHPULSE => 202 ps
    )
    port map (
      I => outNot_OBUF_non_inverted,
      O => ProtoComp3_IINV_OUT
    );
  outNOR_OBUF : X_OBUF
    generic map(
      LOC => "PAD122"
    )
    port map (
      I => NlwBufferSignal_outNOR_OBUF_I,
      O => outNOR
    );
  outNAND_OBUF : X_OBUF
    generic map(
      LOC => "PAD134"
    )
    port map (
      I => NlwBufferSignal_outNAND_OBUF_I,
      O => outNAND
    );
  outOR_OBUF : X_OBUF
    generic map(
      LOC => "PAD123"
    )
    port map (
      I => NlwBufferSignal_outOR_OBUF_I,
      O => outOR
    );
  outAND_OBUF : X_OBUF
    generic map(
      LOC => "PAD124"
    )
    port map (
      I => NlwBufferSignal_outAND_OBUF_I,
      O => outAND
    );
  outNot_OBUF : X_OBUF
    generic map(
      LOC => "PAD135"
    )
    port map (
      I => NlwBufferSignal_outNot_OBUF_I,
      O => outNot
    );
  inB_IBUF : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 202 ps
    )
    port map (
      O => inB_IBUF_15,
      I => inB
    );
  ProtoComp4_IMUX : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 202 ps
    )
    port map (
      I => inB_IBUF_15,
      O => inB_IBUF_0
    );
  outAND_OBUF_outAND_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => outOR_OBUF_24,
      O => outOR_OBUF_0
    );
  outAND1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y0",
      INIT => X"0000FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => outNot_OBUF_35,
      ADR3 => inB_IBUF_0,
      ADR5 => '1',
      O => outAND_OBUF_39
    );
  outOR1 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y0",
      INIT => X"FF00FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => outNot_OBUF_35,
      ADR3 => inB_IBUF_0,
      O => outOR_OBUF_24
    );
  outNAND_OBUF_outNAND_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => outNOR_OBUF_17,
      O => outNOR_OBUF_0
    );
  outNAND1 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y0",
      INIT => X"FFFF0F0FFFFF0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => outNot_OBUF_35,
      ADR2 => inB_IBUF_0,
      ADR5 => '1',
      O => outNAND_OBUF_34
    );
  outNOR1 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y0",
      INIT => X"0F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => outNot_OBUF_35,
      ADR2 => inB_IBUF_0,
      O => outNOR_OBUF_17
    );
  NlwBufferBlock_outNOR_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => outNOR_OBUF_0,
      O => NlwBufferSignal_outNOR_OBUF_I
    );
  NlwBufferBlock_outNAND_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => outNAND_OBUF_34,
      O => NlwBufferSignal_outNAND_OBUF_I
    );
  NlwBufferBlock_outOR_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => outOR_OBUF_0,
      O => NlwBufferSignal_outOR_OBUF_I
    );
  NlwBufferBlock_outAND_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => outAND_OBUF_39,
      O => NlwBufferSignal_outAND_OBUF_I
    );
  NlwBufferBlock_outNot_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => outNot_OBUF_35,
      O => NlwBufferSignal_outNot_OBUF_I
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

