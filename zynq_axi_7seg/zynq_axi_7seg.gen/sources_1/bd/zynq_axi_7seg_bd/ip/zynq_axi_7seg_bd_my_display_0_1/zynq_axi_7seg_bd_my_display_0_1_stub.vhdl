-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Mon Dec 16 10:23:33 2024
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/FPGA_project/zynq_axi_7seg/zynq_axi_7seg.gen/sources_1/bd/zynq_axi_7seg_bd/ip/zynq_axi_7seg_bd_my_display_0_1/zynq_axi_7seg_bd_my_display_0_1_stub.vhdl
-- Design      : zynq_axi_7seg_bd_my_display_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zynq_axi_7seg_bd_my_display_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    tick : in STD_LOGIC;
    bin_num : in STD_LOGIC_VECTOR ( 7 downto 0 );
    AN : out STD_LOGIC_VECTOR ( 6 downto 0 );
    CA : out STD_LOGIC
  );

end zynq_axi_7seg_bd_my_display_0_1;

architecture stub of zynq_axi_7seg_bd_my_display_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,tick,bin_num[7:0],AN[6:0],CA";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "my_display,Vivado 2024.1";
begin
end;
