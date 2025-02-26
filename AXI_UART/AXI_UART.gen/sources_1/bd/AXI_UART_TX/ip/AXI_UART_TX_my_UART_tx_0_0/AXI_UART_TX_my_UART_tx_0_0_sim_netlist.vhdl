-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Mon Jan  6 12:15:55 2025
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/FPGA_project/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_TX/ip/AXI_UART_TX_my_UART_tx_0_0/AXI_UART_TX_my_UART_tx_0_0_sim_netlist.vhdl
-- Design      : AXI_UART_TX_my_UART_tx_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_UART_TX_my_UART_tx_0_0_mod10 is
  port (
    count_10 : out STD_LOGIC;
    reset_cnt : in STD_LOGIC;
    increment : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_UART_TX_my_UART_tx_0_0_mod10 : entity is "mod10";
end AXI_UART_TX_my_UART_tx_0_0_mod10;

architecture STRUCTURE of AXI_UART_TX_my_UART_tx_0_0_mod10 is
  signal cnt0_n_0 : STD_LOGIC;
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal cnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^count_10\ : STD_LOGIC;
  signal count_10_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair0";
begin
  count_10 <= \^count_10\;
cnt0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBFAAAAAAAA"
    )
        port map (
      I0 => reset_cnt,
      I1 => cnt_reg(3),
      I2 => cnt_reg(1),
      I3 => cnt_reg(0),
      I4 => cnt_reg(2),
      I5 => increment,
      O => cnt0_n_0
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => reset_cnt,
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => cnt_reg(1),
      I1 => cnt_reg(0),
      I2 => reset_cnt,
      O => \cnt[1]_i_1_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => cnt_reg(1),
      I2 => cnt_reg(0),
      I3 => reset_cnt,
      O => \cnt[2]_i_1_n_0\
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => cnt_reg(3),
      I1 => cnt_reg(2),
      I2 => cnt_reg(0),
      I3 => cnt_reg(1),
      I4 => reset_cnt,
      O => \cnt[3]_i_1_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cnt0_n_0,
      CLR => rst,
      D => \cnt[0]_i_1_n_0\,
      Q => cnt_reg(0)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cnt0_n_0,
      CLR => rst,
      D => \cnt[1]_i_1_n_0\,
      Q => cnt_reg(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cnt0_n_0,
      CLR => rst,
      D => \cnt[2]_i_1_n_0\,
      Q => cnt_reg(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cnt0_n_0,
      CLR => rst,
      D => \cnt[3]_i_1_n_0\,
      Q => cnt_reg(3)
    );
count_10_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555500000040"
    )
        port map (
      I0 => reset_cnt,
      I1 => cnt_reg(3),
      I2 => cnt_reg(1),
      I3 => cnt_reg(2),
      I4 => cnt_reg(0),
      I5 => \^count_10\,
      O => count_10_i_1_n_0
    );
count_10_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => count_10_i_1_n_0,
      Q => \^count_10\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_UART_TX_my_UART_tx_0_0_my_115200_timer is
  port (
    next_bit : out STD_LOGIC;
    \counter_reg[4]_0\ : out STD_LOGIC;
    next_bit0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    reset_timer : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_UART_TX_my_UART_tx_0_0_my_115200_timer : entity is "my_115200_timer";
end AXI_UART_TX_my_UART_tx_0_0_my_115200_timer;

architecture STRUCTURE of AXI_UART_TX_my_UART_tx_0_0_my_115200_timer is
  signal counter : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \counter0_carry__0_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_1\ : STD_LOGIC;
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry__1_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_n_1\ : STD_LOGIC;
  signal \counter0_carry__1_n_2\ : STD_LOGIC;
  signal \counter0_carry__1_n_3\ : STD_LOGIC;
  signal \counter0_carry__2_n_1\ : STD_LOGIC;
  signal \counter0_carry__2_n_2\ : STD_LOGIC;
  signal \counter0_carry__2_n_3\ : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \counter[11]_i_1_n_0\ : STD_LOGIC;
  signal \counter[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter[13]_i_1_n_0\ : STD_LOGIC;
  signal \counter[14]_i_1_n_0\ : STD_LOGIC;
  signal \counter[15]_i_1_n_0\ : STD_LOGIC;
  signal \counter[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \counter[16]_i_4_n_0\ : STD_LOGIC;
  signal \counter[16]_i_5_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter[9]_i_1_n_0\ : STD_LOGIC;
  signal \^counter_reg[4]_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal \NLW_counter0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter[11]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter[12]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter[14]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \counter[15]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter[9]_i_1\ : label is "soft_lutpair6";
begin
  \counter_reg[4]_0\ <= \^counter_reg[4]_0\;
counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter0_carry_n_0,
      CO(2) => counter0_carry_n_1,
      CO(1) => counter0_carry_n_2,
      CO(0) => counter0_carry_n_3,
      CYINIT => counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => counter(4 downto 1)
    );
\counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter0_carry_n_0,
      CO(3) => \counter0_carry__0_n_0\,
      CO(2) => \counter0_carry__0_n_1\,
      CO(1) => \counter0_carry__0_n_2\,
      CO(0) => \counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => counter(8 downto 5)
    );
\counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__0_n_0\,
      CO(3) => \counter0_carry__1_n_0\,
      CO(2) => \counter0_carry__1_n_1\,
      CO(1) => \counter0_carry__1_n_2\,
      CO(0) => \counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => counter(12 downto 9)
    );
\counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__1_n_0\,
      CO(3) => \NLW_counter0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \counter0_carry__2_n_1\,
      CO(1) => \counter0_carry__2_n_2\,
      CO(0) => \counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => counter(16 downto 13)
    );
\counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^counter_reg[4]_0\,
      I1 => counter(0),
      I2 => reset_timer,
      O => \counter[0]_i_1_n_0\
    );
\counter[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^counter_reg[4]_0\,
      I1 => data0(10),
      I2 => reset_timer,
      O => \counter[10]_i_1_n_0\
    );
\counter[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^counter_reg[4]_0\,
      I1 => data0(11),
      I2 => reset_timer,
      O => \counter[11]_i_1_n_0\
    );
\counter[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^counter_reg[4]_0\,
      I1 => data0(12),
      I2 => reset_timer,
      O => \counter[12]_i_1_n_0\
    );
\counter[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^counter_reg[4]_0\,
      I1 => data0(13),
      I2 => reset_timer,
      O => \counter[13]_i_1_n_0\
    );
\counter[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^counter_reg[4]_0\,
      I1 => data0(14),
      I2 => reset_timer,
      O => \counter[14]_i_1_n_0\
    );
\counter[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^counter_reg[4]_0\,
      I1 => data0(15),
      I2 => reset_timer,
      O => \counter[15]_i_1_n_0\
    );
\counter[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^counter_reg[4]_0\,
      I1 => data0(16),
      I2 => reset_timer,
      O => \counter[16]_i_1_n_0\
    );
\counter[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => \counter[16]_i_3_n_0\,
      I1 => \counter[16]_i_4_n_0\,
      I2 => \counter[16]_i_5_n_0\,
      I3 => counter(4),
      I4 => counter(9),
      I5 => counter(5),
      O => \^counter_reg[4]_0\
    );
\counter[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => counter(13),
      I1 => counter(16),
      I2 => counter(12),
      I3 => counter(11),
      I4 => counter(7),
      I5 => counter(10),
      O => \counter[16]_i_3_n_0\
    );
\counter[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => counter(14),
      I1 => counter(1),
      I2 => counter(2),
      I3 => counter(15),
      O => \counter[16]_i_4_n_0\
    );
\counter[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => counter(3),
      I1 => counter(0),
      I2 => counter(8),
      I3 => counter(6),
      O => \counter[16]_i_5_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^counter_reg[4]_0\,
      I1 => data0(1),
      I2 => reset_timer,
      O => \counter[1]_i_1_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^counter_reg[4]_0\,
      I1 => data0(2),
      I2 => reset_timer,
      O => \counter[2]_i_1_n_0\
    );
\counter[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^counter_reg[4]_0\,
      I1 => data0(3),
      I2 => reset_timer,
      O => \counter[3]_i_1_n_0\
    );
\counter[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^counter_reg[4]_0\,
      I1 => data0(4),
      I2 => reset_timer,
      O => \counter[4]_i_1_n_0\
    );
\counter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^counter_reg[4]_0\,
      I1 => data0(5),
      I2 => reset_timer,
      O => \counter[5]_i_1_n_0\
    );
\counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^counter_reg[4]_0\,
      I1 => data0(6),
      I2 => reset_timer,
      O => \counter[6]_i_1_n_0\
    );
\counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^counter_reg[4]_0\,
      I1 => data0(7),
      I2 => reset_timer,
      O => \counter[7]_i_1_n_0\
    );
\counter[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^counter_reg[4]_0\,
      I1 => data0(8),
      I2 => reset_timer,
      O => \counter[8]_i_1_n_0\
    );
\counter[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^counter_reg[4]_0\,
      I1 => data0(9),
      I2 => reset_timer,
      O => \counter[9]_i_1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \counter[0]_i_1_n_0\,
      Q => counter(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \counter[10]_i_1_n_0\,
      Q => counter(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \counter[11]_i_1_n_0\,
      Q => counter(11)
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \counter[12]_i_1_n_0\,
      Q => counter(12)
    );
\counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \counter[13]_i_1_n_0\,
      Q => counter(13)
    );
\counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \counter[14]_i_1_n_0\,
      Q => counter(14)
    );
\counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \counter[15]_i_1_n_0\,
      Q => counter(15)
    );
\counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \counter[16]_i_1_n_0\,
      Q => counter(16)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \counter[1]_i_1_n_0\,
      Q => counter(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \counter[2]_i_1_n_0\,
      Q => counter(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \counter[3]_i_1_n_0\,
      Q => counter(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \counter[4]_i_1_n_0\,
      Q => counter(4)
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \counter[5]_i_1_n_0\,
      Q => counter(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \counter[6]_i_1_n_0\,
      Q => counter(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \counter[7]_i_1_n_0\,
      Q => counter(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \counter[8]_i_1_n_0\,
      Q => counter(8)
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \counter[9]_i_1_n_0\,
      Q => counter(9)
    );
next_bit_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => next_bit0,
      Q => next_bit
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_UART_TX_my_UART_tx_0_0_my_transmit_FSM is
  port (
    reset_timer : out STD_LOGIC;
    busy : out STD_LOGIC;
    load : out STD_LOGIC;
    shift : out STD_LOGIC;
    reset_cnt : out STD_LOGIC;
    increment : out STD_LOGIC;
    next_bit0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clk : in STD_LOGIC;
    next_bit_reg : in STD_LOGIC;
    rst : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    send : in STD_LOGIC;
    count_10 : in STD_LOGIC;
    next_bit : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_UART_TX_my_UART_tx_0_0_my_transmit_FSM : entity is "my_transmit_FSM";
end AXI_UART_TX_my_UART_tx_0_0_my_transmit_FSM;

architecture STRUCTURE of AXI_UART_TX_my_UART_tx_0_0_my_transmit_FSM is
  signal \FSM_onehot_curr_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_curr_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_curr_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_curr_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_curr_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_next_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \__3/i__n_0\ : STD_LOGIC;
  signal \__4/i__n_0\ : STD_LOGIC;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal \^load\ : STD_LOGIC;
  signal load_i_1_n_0 : STD_LOGIC;
  signal \next_state__0\ : STD_LOGIC;
  signal \^reset_timer\ : STD_LOGIC;
  signal \^shift\ : STD_LOGIC;
  signal shift_i_1_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[0]\ : label is "LOAD:00010,SHIFT:01000,COUNT:00100,IDLE:00001,WAIT:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[1]\ : label is "LOAD:00010,SHIFT:01000,COUNT:00100,IDLE:00001,WAIT:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[2]\ : label is "LOAD:00010,SHIFT:01000,COUNT:00100,IDLE:00001,WAIT:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[3]\ : label is "LOAD:00010,SHIFT:01000,COUNT:00100,IDLE:00001,WAIT:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[4]\ : label is "LOAD:00010,SHIFT:01000,COUNT:00100,IDLE:00001,WAIT:10000";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_next_state[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_onehot_next_state[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_onehot_next_state[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_onehot_next_state[4]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \__3/i_\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \__4/i_\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of load_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \q[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \q[0]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \q[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \q[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of shift_i_1 : label is "soft_lutpair11";
begin
  load <= \^load\;
  reset_timer <= \^reset_timer\;
  shift <= \^shift\;
\FSM_onehot_curr_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[0]\,
      Q => \FSM_onehot_curr_state_reg_n_0_[0]\,
      S => rst
    );
\FSM_onehot_curr_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[1]\,
      Q => \FSM_onehot_curr_state_reg_n_0_[1]\,
      R => rst
    );
\FSM_onehot_curr_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[2]\,
      Q => \FSM_onehot_curr_state_reg_n_0_[2]\,
      R => rst
    );
\FSM_onehot_curr_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[3]\,
      Q => \FSM_onehot_curr_state_reg_n_0_[3]\,
      R => rst
    );
\FSM_onehot_curr_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[4]\,
      Q => \FSM_onehot_curr_state_reg_n_0_[4]\,
      R => rst
    );
\FSM_onehot_next_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I1 => send,
      I2 => \FSM_onehot_curr_state_reg_n_0_[4]\,
      O => \FSM_onehot_next_state[0]_i_1_n_0\
    );
\FSM_onehot_next_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I1 => send,
      O => \FSM_onehot_next_state[1]_i_1_n_0\
    );
\FSM_onehot_next_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAEFFAE"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_curr_state_reg_n_0_[3]\,
      I2 => count_10,
      I3 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      I4 => next_bit,
      O => \FSM_onehot_next_state[2]_i_1_n_0\
    );
\FSM_onehot_next_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      I1 => next_bit,
      O => \FSM_onehot_next_state[3]_i_1_n_0\
    );
\FSM_onehot_next_state[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_curr_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_curr_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      O => \next_state__0\
    );
\FSM_onehot_next_state[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => count_10,
      I1 => \FSM_onehot_curr_state_reg_n_0_[3]\,
      I2 => send,
      I3 => \FSM_onehot_curr_state_reg_n_0_[4]\,
      O => \FSM_onehot_next_state[4]_i_2_n_0\
    );
\FSM_onehot_next_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \next_state__0\,
      D => \FSM_onehot_next_state[0]_i_1_n_0\,
      PRE => rst,
      Q => \FSM_onehot_next_state_reg_n_0_[0]\
    );
\FSM_onehot_next_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \next_state__0\,
      CLR => rst,
      D => \FSM_onehot_next_state[1]_i_1_n_0\,
      Q => \FSM_onehot_next_state_reg_n_0_[1]\
    );
\FSM_onehot_next_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \next_state__0\,
      CLR => rst,
      D => \FSM_onehot_next_state[2]_i_1_n_0\,
      Q => \FSM_onehot_next_state_reg_n_0_[2]\
    );
\FSM_onehot_next_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \next_state__0\,
      CLR => rst,
      D => \FSM_onehot_next_state[3]_i_1_n_0\,
      Q => \FSM_onehot_next_state_reg_n_0_[3]\
    );
\FSM_onehot_next_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \next_state__0\,
      CLR => rst,
      D => \FSM_onehot_next_state[4]_i_2_n_0\,
      Q => \FSM_onehot_next_state_reg_n_0_[4]\
    );
\__3/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_curr_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_curr_state_reg_n_0_[3]\,
      O => \__3/i__n_0\
    );
\__4/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_curr_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_curr_state_reg_n_0_[1]\,
      O => \__4/i__n_0\
    );
busy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_curr_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_curr_state_reg_n_0_[1]\,
      I4 => \FSM_onehot_curr_state_reg_n_0_[3]\,
      I5 => rst,
      O => busy_i_1_n_0
    );
busy_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => busy_i_1_n_0,
      D => \__3/i__n_0\,
      Q => busy,
      R => '0'
    );
increment_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => busy_i_1_n_0,
      D => \FSM_onehot_curr_state_reg_n_0_[3]\,
      Q => increment,
      R => '0'
    );
load_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_curr_state_reg_n_0_[1]\,
      O => load_i_1_n_0
    );
load_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => busy_i_1_n_0,
      D => load_i_1_n_0,
      Q => \^load\,
      R => '0'
    );
next_bit_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reset_timer\,
      I1 => next_bit_reg,
      O => next_bit0
    );
\q[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^load\,
      I1 => \^shift\,
      O => E(0)
    );
\q[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => q(0),
      I1 => \^load\,
      I2 => \^shift\,
      O => D(0)
    );
\q[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^shift\,
      I1 => data(0),
      I2 => \^load\,
      I3 => q(1),
      O => D(1)
    );
\q[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^shift\,
      I1 => data(1),
      I2 => \^load\,
      I3 => q(2),
      O => D(2)
    );
\q[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^shift\,
      I1 => data(2),
      I2 => \^load\,
      I3 => q(3),
      O => D(3)
    );
\q[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^shift\,
      I1 => data(3),
      I2 => \^load\,
      I3 => q(4),
      O => D(4)
    );
\q[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^shift\,
      I1 => data(4),
      I2 => \^load\,
      I3 => q(5),
      O => D(5)
    );
\q[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^shift\,
      I1 => data(5),
      I2 => \^load\,
      I3 => q(6),
      O => D(6)
    );
\q[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^shift\,
      I1 => data(6),
      I2 => \^load\,
      I3 => q(7),
      O => D(7)
    );
\q[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^shift\,
      I1 => data(7),
      I2 => \^load\,
      I3 => q(8),
      O => D(8)
    );
reset_cnt_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => busy_i_1_n_0,
      D => \FSM_onehot_curr_state_reg_n_0_[1]\,
      Q => reset_cnt,
      R => '0'
    );
reset_timer_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => busy_i_1_n_0,
      D => \__4/i__n_0\,
      Q => \^reset_timer\,
      R => '0'
    );
shift_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_curr_state_reg_n_0_[3]\,
      O => shift_i_1_n_0
    );
shift_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => busy_i_1_n_0,
      D => shift_i_1_n_0,
      Q => \^shift\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_UART_TX_my_UART_tx_0_0_shiftReg is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \^q\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    parityselect : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    clk : in STD_LOGIC;
    load : in STD_LOGIC;
    shift : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_UART_TX_my_UART_tx_0_0_shiftReg : entity is "shiftReg";
end AXI_UART_TX_my_UART_tx_0_0_shiftReg;

architecture STRUCTURE of AXI_UART_TX_my_UART_tx_0_0_shiftReg is
  signal \^q_1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \q[9]_i_1_n_0\ : STD_LOGIC;
  signal \q[9]_i_2_n_0\ : STD_LOGIC;
  signal \q[9]_i_3_n_0\ : STD_LOGIC;
begin
  \^q\(0) <= \^q_1\(0);
\q[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFC33CAAAA"
    )
        port map (
      I0 => \^q_1\(0),
      I1 => \q[9]_i_2_n_0\,
      I2 => data(1),
      I3 => \q[9]_i_3_n_0\,
      I4 => load,
      I5 => shift,
      O => \q[9]_i_1_n_0\
    );
\q[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => data(5),
      I1 => data(2),
      I2 => data(6),
      I3 => parityselect,
      I4 => data(4),
      I5 => data(7),
      O => \q[9]_i_2_n_0\
    );
\q[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data(3),
      I1 => data(0),
      O => \q[9]_i_3_n_0\
    );
\q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(0),
      Q => Q(0),
      R => '0'
    );
\q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(1),
      Q => Q(1),
      R => '0'
    );
\q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(2),
      Q => Q(2),
      R => '0'
    );
\q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(3),
      Q => Q(3),
      R => '0'
    );
\q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(4),
      Q => Q(4),
      R => '0'
    );
\q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(5),
      Q => Q(5),
      R => '0'
    );
\q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(6),
      Q => Q(6),
      R => '0'
    );
\q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(7),
      Q => Q(7),
      R => '0'
    );
\q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(8),
      Q => Q(8),
      R => '0'
    );
\q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \q[9]_i_1_n_0\,
      Q => \^q_1\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_UART_TX_my_UART_tx_0_0_my_UART_tx is
  port (
    busy : out STD_LOGIC;
    sout : out STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    send : in STD_LOGIC;
    parityselect : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_UART_TX_my_UART_tx_0_0_my_UART_tx : entity is "my_UART_tx";
end AXI_UART_TX_my_UART_tx_0_0_my_UART_tx;

architecture STRUCTURE of AXI_UART_TX_my_UART_tx_0_0_my_UART_tx is
  signal count_10 : STD_LOGIC;
  signal increment : STD_LOGIC;
  signal load : STD_LOGIC;
  signal my_115200_timer_0_n_1 : STD_LOGIC;
  signal next_bit : STD_LOGIC;
  signal next_bit0 : STD_LOGIC;
  signal ns : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal q : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal reset_cnt : STD_LOGIC;
  signal reset_timer : STD_LOGIC;
  signal shift : STD_LOGIC;
  signal transmit_FSM_0_n_7 : STD_LOGIC;
begin
mod10_0: entity work.AXI_UART_TX_my_UART_tx_0_0_mod10
     port map (
      clk => clk,
      count_10 => count_10,
      increment => increment,
      reset_cnt => reset_cnt,
      rst => rst
    );
my_115200_timer_0: entity work.AXI_UART_TX_my_UART_tx_0_0_my_115200_timer
     port map (
      clk => clk,
      \counter_reg[4]_0\ => my_115200_timer_0_n_1,
      next_bit => next_bit,
      next_bit0 => next_bit0,
      reset_timer => reset_timer,
      rst => rst
    );
shiftreg_0: entity work.AXI_UART_TX_my_UART_tx_0_0_shiftReg
     port map (
      D(8 downto 0) => ns(8 downto 0),
      E(0) => transmit_FSM_0_n_7,
      Q(8 downto 1) => q(8 downto 1),
      Q(0) => sout,
      clk => clk,
      data(7 downto 0) => data(7 downto 0),
      load => load,
      parityselect => parityselect,
      \^q\(0) => q(9),
      shift => shift
    );
transmit_FSM_0: entity work.AXI_UART_TX_my_UART_tx_0_0_my_transmit_FSM
     port map (
      D(8 downto 0) => ns(8 downto 0),
      E(0) => transmit_FSM_0_n_7,
      busy => busy,
      clk => clk,
      count_10 => count_10,
      data(7 downto 0) => data(7 downto 0),
      increment => increment,
      load => load,
      next_bit => next_bit,
      next_bit0 => next_bit0,
      next_bit_reg => my_115200_timer_0_n_1,
      q(8 downto 0) => q(9 downto 1),
      reset_cnt => reset_cnt,
      reset_timer => reset_timer,
      rst => rst,
      send => send,
      shift => shift
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_UART_TX_my_UART_tx_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    send : in STD_LOGIC;
    parityselect : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    busy : out STD_LOGIC;
    sout : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of AXI_UART_TX_my_UART_tx_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of AXI_UART_TX_my_UART_tx_0_0 : entity is "AXI_UART_TX_my_UART_tx_0_0,my_UART_tx,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of AXI_UART_TX_my_UART_tx_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of AXI_UART_TX_my_UART_tx_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of AXI_UART_TX_my_UART_tx_0_0 : entity is "my_UART_tx,Vivado 2024.1";
end AXI_UART_TX_my_UART_tx_0_0;

architecture STRUCTURE of AXI_UART_TX_my_UART_tx_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN AXI_UART_TX_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.AXI_UART_TX_my_UART_tx_0_0_my_UART_tx
     port map (
      busy => busy,
      clk => clk,
      data(7 downto 0) => data(7 downto 0),
      parityselect => parityselect,
      rst => rst,
      send => send,
      sout => sout
    );
end STRUCTURE;
