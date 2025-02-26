-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Mon Dec 16 10:23:33 2024
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/FPGA_project/zynq_axi_7seg/zynq_axi_7seg.gen/sources_1/bd/zynq_axi_7seg_bd/ip/zynq_axi_7seg_bd_my_display_0_1/zynq_axi_7seg_bd_my_display_0_1_sim_netlist.vhdl
-- Design      : zynq_axi_7seg_bd_my_display_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zynq_axi_7seg_bd_my_display_0_1_my_display is
  port (
    AN : out STD_LOGIC_VECTOR ( 6 downto 0 );
    CA_reg_0 : out STD_LOGIC;
    bin_num : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tick : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zynq_axi_7seg_bd_my_display_0_1_my_display : entity is "my_display";
end zynq_axi_7seg_bd_my_display_0_1_my_display;

architecture STRUCTURE of zynq_axi_7seg_bd_my_display_0_1_my_display is
  signal CA_i_1_n_0 : STD_LOGIC;
  signal \^ca_reg_0\ : STD_LOGIC;
  signal \digit__3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \AN[5]_INST_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \AN[6]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \AN[6]_INST_0_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \AN[6]_INST_0_i_3\ : label is "soft_lutpair0";
begin
  CA_reg_0 <= \^ca_reg_0\;
\AN[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD666D6FFFBBBFB"
    )
        port map (
      I0 => \digit__3\(3),
      I1 => \digit__3\(2),
      I2 => bin_num(1),
      I3 => \^ca_reg_0\,
      I4 => bin_num(5),
      I5 => \digit__3\(0),
      O => AN(0)
    );
\AN[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56A6015157F7FFFF"
    )
        port map (
      I0 => \digit__3\(3),
      I1 => bin_num(1),
      I2 => \^ca_reg_0\,
      I3 => bin_num(5),
      I4 => \digit__3\(0),
      I5 => \digit__3\(2),
      O => AN(1)
    );
\AN[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777FFF7F66677767"
    )
        port map (
      I0 => \digit__3\(3),
      I1 => \digit__3\(2),
      I2 => bin_num(1),
      I3 => \^ca_reg_0\,
      I4 => bin_num(5),
      I5 => \digit__3\(0),
      O => AN(2)
    );
\AN[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333EEE3EDDDBBBDB"
    )
        port map (
      I0 => \digit__3\(3),
      I1 => \digit__3\(2),
      I2 => bin_num(1),
      I3 => \^ca_reg_0\,
      I4 => bin_num(5),
      I5 => \digit__3\(0),
      O => AN(3)
    );
\AN[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA808FEAEFFFF"
    )
        port map (
      I0 => \digit__3\(3),
      I1 => bin_num(1),
      I2 => \^ca_reg_0\,
      I3 => bin_num(5),
      I4 => \digit__3\(2),
      I5 => \digit__3\(0),
      O => AN(4)
    );
\AN[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE666E6EEEFFFEF"
    )
        port map (
      I0 => \digit__3\(3),
      I1 => \digit__3\(2),
      I2 => bin_num(1),
      I3 => \^ca_reg_0\,
      I4 => bin_num(5),
      I5 => \digit__3\(0),
      O => AN(5)
    );
\AN[5]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bin_num(4),
      I1 => \^ca_reg_0\,
      I2 => bin_num(0),
      O => \digit__3\(0)
    );
\AN[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFFD5DAAAA"
    )
        port map (
      I0 => \digit__3\(3),
      I1 => bin_num(0),
      I2 => \^ca_reg_0\,
      I3 => bin_num(4),
      I4 => \digit__3\(2),
      I5 => \digit__3\(1),
      O => AN(6)
    );
\AN[6]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bin_num(7),
      I1 => \^ca_reg_0\,
      I2 => bin_num(3),
      O => \digit__3\(3)
    );
\AN[6]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bin_num(6),
      I1 => \^ca_reg_0\,
      I2 => bin_num(2),
      O => \digit__3\(2)
    );
\AN[6]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bin_num(5),
      I1 => \^ca_reg_0\,
      I2 => bin_num(1),
      O => \digit__3\(1)
    );
CA_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tick,
      I1 => \^ca_reg_0\,
      O => CA_i_1_n_0
    );
CA_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => CA_i_1_n_0,
      Q => \^ca_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zynq_axi_7seg_bd_my_display_0_1 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    tick : in STD_LOGIC;
    bin_num : in STD_LOGIC_VECTOR ( 7 downto 0 );
    AN : out STD_LOGIC_VECTOR ( 6 downto 0 );
    CA : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zynq_axi_7seg_bd_my_display_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zynq_axi_7seg_bd_my_display_0_1 : entity is "zynq_axi_7seg_bd_my_display_0_1,my_display,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zynq_axi_7seg_bd_my_display_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of zynq_axi_7seg_bd_my_display_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of zynq_axi_7seg_bd_my_display_0_1 : entity is "my_display,Vivado 2024.1";
end zynq_axi_7seg_bd_my_display_0_1;

architecture STRUCTURE of zynq_axi_7seg_bd_my_display_0_1 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_axi_7seg_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.zynq_axi_7seg_bd_my_display_0_1_my_display
     port map (
      AN(6 downto 0) => AN(6 downto 0),
      CA_reg_0 => CA,
      bin_num(7 downto 0) => bin_num(7 downto 0),
      clk => clk,
      rst => rst,
      tick => tick
    );
end STRUCTURE;
