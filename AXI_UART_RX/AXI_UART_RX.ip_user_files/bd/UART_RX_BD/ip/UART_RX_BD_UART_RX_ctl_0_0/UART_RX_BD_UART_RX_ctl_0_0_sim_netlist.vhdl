-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Tue Jan  7 11:48:04 2025
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/FPGA_project/AXI_UART_RX/AXI_UART_RX.gen/sources_1/bd/UART_RX_BD/ip/UART_RX_BD_UART_RX_ctl_0_0/UART_RX_BD_UART_RX_ctl_0_0_sim_netlist.vhdl
-- Design      : UART_RX_BD_UART_RX_ctl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_RX_BD_UART_RX_ctl_0_0_CNT_11 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    CNT_11_rst : in STD_LOGIC;
    CNT_11_up : in STD_LOGIC;
    CNT_11 : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of UART_RX_BD_UART_RX_ctl_0_0_CNT_11 : entity is "CNT_11";
end UART_RX_BD_UART_RX_ctl_0_0_CNT_11;

architecture STRUCTURE of UART_RX_BD_UART_RX_ctl_0_0_CNT_11 is
  signal \^cnt_11\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CNT_11[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \CNT_11[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \CNT_11[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \CNT_11[3]_i_2\ : label is "soft_lutpair4";
begin
  CNT_11(3 downto 0) <= \^cnt_11\(3 downto 0);
\CNT_11[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004555"
    )
        port map (
      I0 => \^cnt_11\(0),
      I1 => \^cnt_11\(2),
      I2 => \^cnt_11\(3),
      I3 => \^cnt_11\(1),
      I4 => CNT_11_rst,
      O => p_1_in(0)
    );
\CNT_11[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^cnt_11\(1),
      I1 => \^cnt_11\(0),
      I2 => CNT_11_rst,
      O => p_1_in(1)
    );
\CNT_11[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006C"
    )
        port map (
      I0 => \^cnt_11\(0),
      I1 => \^cnt_11\(2),
      I2 => \^cnt_11\(1),
      I3 => CNT_11_rst,
      O => p_1_in(2)
    );
\CNT_11[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAEA"
    )
        port map (
      I0 => CNT_11_rst,
      I1 => \^cnt_11\(1),
      I2 => \^cnt_11\(3),
      I3 => \^cnt_11\(0),
      I4 => \^cnt_11\(2),
      I5 => CNT_11_up,
      O => p_0_in
    );
\CNT_11[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006CCC"
    )
        port map (
      I0 => \^cnt_11\(1),
      I1 => \^cnt_11\(3),
      I2 => \^cnt_11\(0),
      I3 => \^cnt_11\(2),
      I4 => CNT_11_rst,
      O => p_1_in(3)
    );
\CNT_11_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => p_1_in(0),
      Q => \^cnt_11\(0)
    );
\CNT_11_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => p_1_in(1),
      Q => \^cnt_11\(1)
    );
\CNT_11_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => p_1_in(2),
      Q => \^cnt_11\(2)
    );
\CNT_11_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => p_1_in(3),
      Q => \^cnt_11\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_RX_BD_UART_RX_ctl_0_0_CNT_542 is
  port (
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    CNT_542_rst : in STD_LOGIC;
    CNT_542_up : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of UART_RX_BD_UART_RX_ctl_0_0_CNT_542 : entity is "CNT_542";
end UART_RX_BD_UART_RX_ctl_0_0_CNT_542;

architecture STRUCTURE of UART_RX_BD_UART_RX_ctl_0_0_CNT_542 is
  signal \CNT_542[10]_i_1_n_0\ : STD_LOGIC;
  signal \CNT_542[10]_i_3_n_0\ : STD_LOGIC;
  signal \CNT_542[10]_i_4_n_0\ : STD_LOGIC;
  signal \CNT_542[10]_i_5_n_0\ : STD_LOGIC;
  signal \CNT_542[5]_i_2_n_0\ : STD_LOGIC;
  signal \CNT_542[9]_i_2_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CNT_542[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \CNT_542[10]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \CNT_542[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \CNT_542[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \CNT_542[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \CNT_542[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \CNT_542[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \CNT_542[8]_i_1\ : label is "soft_lutpair11";
begin
  Q(10 downto 0) <= \^q\(10 downto 0);
\CNT_542[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0507"
    )
        port map (
      I0 => \^q\(0),
      I1 => \CNT_542[10]_i_3_n_0\,
      I2 => CNT_542_rst,
      I3 => \^q\(1),
      O => p_1_in(0)
    );
\CNT_542[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEEFEE"
    )
        port map (
      I0 => CNT_542_rst,
      I1 => CNT_542_up,
      I2 => \CNT_542[10]_i_3_n_0\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \CNT_542[10]_i_1_n_0\
    );
\CNT_542[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D2"
    )
        port map (
      I0 => \^q\(9),
      I1 => \CNT_542[10]_i_4_n_0\,
      I2 => \^q\(10),
      I3 => CNT_542_rst,
      O => p_1_in(10)
    );
\CNT_542[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(8),
      I2 => \^q\(10),
      I3 => \^q\(9),
      I4 => \^q\(6),
      I5 => \CNT_542[10]_i_5_n_0\,
      O => \CNT_542[10]_i_3_n_0\
    );
\CNT_542[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^q\(7),
      I1 => \CNT_542[9]_i_2_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(8),
      O => \CNT_542[10]_i_4_n_0\
    );
\CNT_542[10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(5),
      O => \CNT_542[10]_i_5_n_0\
    );
\CNT_542[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0230"
    )
        port map (
      I0 => \CNT_542[10]_i_3_n_0\,
      I1 => CNT_542_rst,
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => p_1_in(1)
    );
\CNT_542[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => CNT_542_rst,
      O => p_1_in(2)
    );
\CNT_542[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => CNT_542_rst,
      O => p_1_in(3)
    );
\CNT_542[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(4),
      I5 => CNT_542_rst,
      O => p_1_in(4)
    );
\CNT_542[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF7F0080"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \CNT_542[5]_i_2_n_0\,
      I4 => \^q\(5),
      I5 => CNT_542_rst,
      O => p_1_in(5)
    );
\CNT_542[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \CNT_542[5]_i_2_n_0\
    );
\CNT_542[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \CNT_542[9]_i_2_n_0\,
      I1 => \^q\(6),
      I2 => CNT_542_rst,
      O => p_1_in(6)
    );
\CNT_542[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B4"
    )
        port map (
      I0 => \CNT_542[9]_i_2_n_0\,
      I1 => \^q\(6),
      I2 => \^q\(7),
      I3 => CNT_542_rst,
      O => p_1_in(7)
    );
\CNT_542[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DF20"
    )
        port map (
      I0 => \^q\(6),
      I1 => \CNT_542[9]_i_2_n_0\,
      I2 => \^q\(7),
      I3 => \^q\(8),
      I4 => CNT_542_rst,
      O => p_1_in(8)
    );
\CNT_542[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DFFF2000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \CNT_542[9]_i_2_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(8),
      I4 => \^q\(9),
      I5 => CNT_542_rst,
      O => p_1_in(9)
    );
\CNT_542[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => \CNT_542[9]_i_2_n_0\
    );
\CNT_542_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \CNT_542[10]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(0),
      Q => \^q\(0)
    );
\CNT_542_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \CNT_542[10]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(10),
      Q => \^q\(10)
    );
\CNT_542_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \CNT_542[10]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(1),
      Q => \^q\(1)
    );
\CNT_542_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \CNT_542[10]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(2),
      Q => \^q\(2)
    );
\CNT_542_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \CNT_542[10]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(3),
      Q => \^q\(3)
    );
\CNT_542_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \CNT_542[10]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(4),
      Q => \^q\(4)
    );
\CNT_542_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \CNT_542[10]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(5),
      Q => \^q\(5)
    );
\CNT_542_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \CNT_542[10]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(6),
      Q => \^q\(6)
    );
\CNT_542_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \CNT_542[10]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(7),
      Q => \^q\(7)
    );
\CNT_542_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \CNT_542[10]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(8),
      Q => \^q\(8)
    );
\CNT_542_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \CNT_542[10]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(9),
      Q => \^q\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_RX_BD_UART_RX_ctl_0_0_my_fsm is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    RXD : in STD_LOGIC;
    CNT_542 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    CNT_11 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CNT_542_rst : out STD_LOGIC;
    CNT_542_up : out STD_LOGIC;
    CNT_11_rst : out STD_LOGIC;
    CNT_11_up : out STD_LOGIC;
    sample : out STD_LOGIC
  );
  attribute COUNTER_542_RST : string;
  attribute COUNTER_542_RST of UART_RX_BD_UART_RX_ctl_0_0_my_fsm : entity is "2'b11";
  attribute IDLE : string;
  attribute IDLE of UART_RX_BD_UART_RX_ctl_0_0_my_fsm : entity is "2'b00";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of UART_RX_BD_UART_RX_ctl_0_0_my_fsm : entity is "my_fsm";
  attribute READY : string;
  attribute READY of UART_RX_BD_UART_RX_ctl_0_0_my_fsm : entity is "2'b01";
end UART_RX_BD_UART_RX_ctl_0_0_my_fsm;

architecture STRUCTURE of UART_RX_BD_UART_RX_ctl_0_0_my_fsm is
  signal CNT_11_rst_i_1_n_0 : STD_LOGIC;
  signal CNT_11_up_i_1_n_0 : STD_LOGIC;
  signal CNT_542_rst_i_2_n_0 : STD_LOGIC;
  signal CNT_542_up_i_1_n_0 : STD_LOGIC;
  signal \FSM_sequential_curr_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_sequential_curr_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_sequential_next_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state[0]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state[1]_i_3_n_0\ : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \next_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \^sample\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of CNT_11_up_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of CNT_542_rst_i_2 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of CNT_542_up_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[1]_i_1\ : label is "soft_lutpair9";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[0]\ : label is "COUNTER_542_RST:11,SAMPLE:10,READY:01,IDLE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[1]\ : label is "COUNTER_542_RST:11,SAMPLE:10,READY:01,IDLE:00";
  attribute SOFT_HLUTNM of \FSM_sequential_next_state[0]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_next_state[0]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_sequential_next_state[0]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_next_state[0]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_next_state[1]_i_2\ : label is "soft_lutpair6";
begin
  CNT_11_up <= \^sample\;
  sample <= \^sample\;
CNT_11_rst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_sequential_curr_state_reg_n_0_[0]\,
      I1 => \FSM_sequential_curr_state_reg_n_0_[1]\,
      O => CNT_11_rst_i_1_n_0
    );
CNT_11_rst_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => CNT_11_rst_i_1_n_0,
      Q => CNT_11_rst,
      R => '0'
    );
CNT_11_up_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_sequential_curr_state_reg_n_0_[1]\,
      I1 => \FSM_sequential_curr_state_reg_n_0_[0]\,
      O => CNT_11_up_i_1_n_0
    );
CNT_11_up_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => CNT_11_up_i_1_n_0,
      Q => \^sample\,
      R => '0'
    );
CNT_542_rst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => p_0_in
    );
CNT_542_rst_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \FSM_sequential_curr_state_reg_n_0_[0]\,
      I1 => \FSM_sequential_curr_state_reg_n_0_[1]\,
      O => CNT_542_rst_i_2_n_0
    );
CNT_542_rst_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => CNT_542_rst_i_2_n_0,
      Q => CNT_542_rst,
      R => '0'
    );
CNT_542_up_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \FSM_sequential_curr_state_reg_n_0_[1]\,
      I1 => \FSM_sequential_curr_state_reg_n_0_[0]\,
      O => CNT_542_up_i_1_n_0
    );
CNT_542_up_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => CNT_542_up_i_1_n_0,
      Q => CNT_542_up,
      R => '0'
    );
\FSM_sequential_curr_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => next_state(0),
      I1 => rst,
      O => \FSM_sequential_curr_state[0]_i_1_n_0\
    );
\FSM_sequential_curr_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => next_state(1),
      I1 => rst,
      O => \FSM_sequential_curr_state[1]_i_1_n_0\
    );
\FSM_sequential_curr_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_curr_state[0]_i_1_n_0\,
      Q => \FSM_sequential_curr_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_sequential_curr_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_curr_state[1]_i_1_n_0\,
      Q => \FSM_sequential_curr_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_sequential_next_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88AAAA8A888AAA"
    )
        port map (
      I0 => \FSM_sequential_next_state[0]_i_2_n_0\,
      I1 => \FSM_sequential_next_state[0]_i_3_n_0\,
      I2 => \FSM_sequential_next_state[0]_i_4_n_0\,
      I3 => \FSM_sequential_next_state[1]_i_3_n_0\,
      I4 => \FSM_sequential_next_state[0]_i_5_n_0\,
      I5 => \FSM_sequential_next_state[0]_i_6_n_0\,
      O => \next_state__0\(0)
    );
\FSM_sequential_next_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \FSM_sequential_curr_state_reg_n_0_[0]\,
      I1 => \FSM_sequential_curr_state_reg_n_0_[1]\,
      I2 => RXD,
      O => \FSM_sequential_next_state[0]_i_2_n_0\
    );
\FSM_sequential_next_state[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \FSM_sequential_curr_state_reg_n_0_[1]\,
      I1 => \FSM_sequential_curr_state_reg_n_0_[0]\,
      O => \FSM_sequential_next_state[0]_i_3_n_0\
    );
\FSM_sequential_next_state[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDFFF"
    )
        port map (
      I0 => CNT_542(10),
      I1 => CNT_542(9),
      I2 => CNT_542(0),
      I3 => CNT_542(5),
      I4 => CNT_542(1),
      O => \FSM_sequential_next_state[0]_i_4_n_0\
    );
\FSM_sequential_next_state[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => CNT_11(0),
      I1 => CNT_11(1),
      I2 => CNT_11(3),
      I3 => CNT_11(2),
      O => \FSM_sequential_next_state[0]_i_5_n_0\
    );
\FSM_sequential_next_state[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDFF"
    )
        port map (
      I0 => CNT_542(9),
      I1 => CNT_542(10),
      I2 => CNT_542(5),
      I3 => CNT_542(1),
      I4 => CNT_542(0),
      O => \FSM_sequential_next_state[0]_i_6_n_0\
    );
\FSM_sequential_next_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00088000"
    )
        port map (
      I0 => \FSM_sequential_next_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_next_state[1]_i_3_n_0\,
      I2 => CNT_542(0),
      I3 => CNT_542(5),
      I4 => CNT_542(1),
      O => \next_state__0\(1)
    );
\FSM_sequential_next_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000020"
    )
        port map (
      I0 => \FSM_sequential_curr_state_reg_n_0_[0]\,
      I1 => \FSM_sequential_curr_state_reg_n_0_[1]\,
      I2 => CNT_542(9),
      I3 => CNT_542(10),
      I4 => CNT_542(5),
      O => \FSM_sequential_next_state[1]_i_2_n_0\
    );
\FSM_sequential_next_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => CNT_542(7),
      I1 => CNT_542(8),
      I2 => CNT_542(2),
      I3 => CNT_542(3),
      I4 => CNT_542(6),
      I5 => CNT_542(4),
      O => \FSM_sequential_next_state[1]_i_3_n_0\
    );
\FSM_sequential_next_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \next_state__0\(0),
      Q => next_state(0)
    );
\FSM_sequential_next_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \next_state__0\(1),
      Q => next_state(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_RX_BD_UART_RX_ctl_0_0_reg9 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    RXD : in STD_LOGIC;
    sample : in STD_LOGIC;
    CNT_11 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reg_out : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of UART_RX_BD_UART_RX_ctl_0_0_reg9 : entity is "reg9";
end UART_RX_BD_UART_RX_ctl_0_0_reg9;

architecture STRUCTURE of UART_RX_BD_UART_RX_ctl_0_0_reg9 is
  signal \^reg_out\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \reg_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \reg_out[1]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg_out[2]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \reg_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[5]_i_3_n_0\ : STD_LOGIC;
  signal \reg_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \reg_out[6]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \reg_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[8]_i_1_n_0\ : STD_LOGIC;
  signal \reg_out[8]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \reg_out[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \reg_out[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \reg_out[2]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \reg_out[4]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \reg_out[5]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \reg_out[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \reg_out[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \reg_out[8]_i_1\ : label is "soft_lutpair1";
begin
  reg_out(8 downto 0) <= \^reg_out\(8 downto 0);
\reg_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => RXD,
      I1 => \reg_out[4]_i_2_n_0\,
      I2 => sample,
      I3 => CNT_11(0),
      I4 => \reg_out[0]_i_2_n_0\,
      I5 => \^reg_out\(0),
      O => \reg_out[0]_i_1_n_0\
    );
\reg_out[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => CNT_11(3),
      I1 => CNT_11(2),
      O => \reg_out[0]_i_2_n_0\
    );
\reg_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RXD,
      I1 => \reg_out[1]_i_2_n_0\,
      I2 => \^reg_out\(1),
      O => \reg_out[1]_i_1_n_0\
    );
\reg_out[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => CNT_11(0),
      I1 => rst,
      I2 => sample,
      I3 => CNT_11(1),
      I4 => CNT_11(3),
      I5 => CNT_11(2),
      O => \reg_out[1]_i_2_n_0\
    );
\reg_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => RXD,
      I1 => CNT_11(2),
      I2 => rst,
      I3 => \reg_out[2]_i_2_n_0\,
      I4 => \reg_out[5]_i_3_n_0\,
      I5 => \^reg_out\(2),
      O => \reg_out[2]_i_1_n_0\
    );
\reg_out[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => CNT_11(1),
      I1 => CNT_11(0),
      O => \reg_out[2]_i_2_n_0\
    );
\reg_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => RXD,
      I1 => \reg_out[4]_i_2_n_0\,
      I2 => \reg_out[3]_i_2_n_0\,
      I3 => CNT_11(3),
      I4 => CNT_11(0),
      I5 => \^reg_out\(3),
      O => \reg_out[3]_i_1_n_0\
    );
\reg_out[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sample,
      I1 => CNT_11(2),
      O => \reg_out[3]_i_2_n_0\
    );
\reg_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => RXD,
      I1 => \reg_out[4]_i_2_n_0\,
      I2 => CNT_11(2),
      I3 => CNT_11(0),
      I4 => \reg_out[5]_i_3_n_0\,
      I5 => \^reg_out\(4),
      O => \reg_out[4]_i_1_n_0\
    );
\reg_out[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst,
      I1 => CNT_11(1),
      O => \reg_out[4]_i_2_n_0\
    );
\reg_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => RXD,
      I1 => \reg_out[5]_i_2_n_0\,
      I2 => CNT_11(1),
      I3 => CNT_11(2),
      I4 => \reg_out[5]_i_3_n_0\,
      I5 => \^reg_out\(5),
      O => \reg_out[5]_i_1_n_0\
    );
\reg_out[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst,
      I1 => CNT_11(0),
      O => \reg_out[5]_i_2_n_0\
    );
\reg_out[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => CNT_11(3),
      I1 => sample,
      O => \reg_out[5]_i_3_n_0\
    );
\reg_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RXD,
      I1 => \reg_out[6]_i_2_n_0\,
      I2 => \^reg_out\(6),
      O => \reg_out[6]_i_1_n_0\
    );
\reg_out[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => CNT_11(3),
      I1 => rst,
      I2 => CNT_11(1),
      I3 => CNT_11(0),
      I4 => sample,
      I5 => CNT_11(2),
      O => \reg_out[6]_i_2_n_0\
    );
\reg_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RXD,
      I1 => \reg_out[7]_i_2_n_0\,
      I2 => \^reg_out\(7),
      O => \reg_out[7]_i_1_n_0\
    );
\reg_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => CNT_11(1),
      I1 => rst,
      I2 => sample,
      I3 => CNT_11(3),
      I4 => CNT_11(0),
      I5 => CNT_11(2),
      O => \reg_out[7]_i_2_n_0\
    );
\reg_out[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RXD,
      I1 => \reg_out[8]_i_2_n_0\,
      I2 => \^reg_out\(8),
      O => \reg_out[8]_i_1_n_0\
    );
\reg_out[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => CNT_11(2),
      I1 => rst,
      I2 => CNT_11(3),
      I3 => CNT_11(0),
      I4 => CNT_11(1),
      I5 => sample,
      O => \reg_out[8]_i_2_n_0\
    );
\reg_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \reg_out[0]_i_1_n_0\,
      Q => \^reg_out\(0)
    );
\reg_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \reg_out[1]_i_1_n_0\,
      Q => \^reg_out\(1)
    );
\reg_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \reg_out[2]_i_1_n_0\,
      Q => \^reg_out\(2)
    );
\reg_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \reg_out[3]_i_1_n_0\,
      Q => \^reg_out\(3)
    );
\reg_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \reg_out[4]_i_1_n_0\,
      Q => \^reg_out\(4)
    );
\reg_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \reg_out[5]_i_1_n_0\,
      Q => \^reg_out\(5)
    );
\reg_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \reg_out[6]_i_1_n_0\,
      Q => \^reg_out\(6)
    );
\reg_out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \reg_out[7]_i_1_n_0\,
      Q => \^reg_out\(7)
    );
\reg_out_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \reg_out[8]_i_1_n_0\,
      Q => \^reg_out\(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_RX_BD_UART_RX_ctl_0_0_UART_RX_ctl is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    RXD : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    parity_error : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of UART_RX_BD_UART_RX_ctl_0_0_UART_RX_ctl : entity is "UART_RX_ctl";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of UART_RX_BD_UART_RX_ctl_0_0_UART_RX_ctl : entity is "soft";
end UART_RX_BD_UART_RX_ctl_0_0_UART_RX_ctl;

architecture STRUCTURE of UART_RX_BD_UART_RX_ctl_0_0_UART_RX_ctl is
  signal CNT_11 : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of CNT_11 : signal is std.standard.true;
  signal CNT_11_rst : STD_LOGIC;
  signal CNT_11_up : STD_LOGIC;
  signal CNT_542 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal CNT_542_rst : STD_LOGIC;
  signal CNT_542_up : STD_LOGIC;
  signal \^data_out\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of \^data_out\ : signal is std.standard.true;
  signal parity_error_INST_0_i_1_n_0 : STD_LOGIC;
  signal reg_out : STD_LOGIC_VECTOR ( 8 to 8 );
  attribute MARK_DEBUG of reg_out : signal is std.standard.true;
  signal sample : STD_LOGIC;
  attribute KEEP_HIERARCHY of CNT_11_0 : label is "soft";
  attribute COUNTER_542_RST : string;
  attribute COUNTER_542_RST of my_fsm_0 : label is "2'b11";
  attribute IDLE : string;
  attribute IDLE of my_fsm_0 : label is "2'b00";
  attribute KEEP_HIERARCHY of my_fsm_0 : label is "soft";
  attribute READY : string;
  attribute READY of my_fsm_0 : label is "2'b01";
  attribute KEEP_HIERARCHY of reg9_0 : label is "soft";
  attribute mark_debug_string : string;
  attribute mark_debug_string of data_out : signal is "true";
begin
  data_out(7 downto 0) <= \^data_out\(7 downto 0);
CNT_11_0: entity work.UART_RX_BD_UART_RX_ctl_0_0_CNT_11
     port map (
      CNT_11(3 downto 0) => CNT_11(3 downto 0),
      CNT_11_rst => CNT_11_rst,
      CNT_11_up => CNT_11_up,
      clk => clk,
      rst => rst
    );
CNT_542_0: entity work.UART_RX_BD_UART_RX_ctl_0_0_CNT_542
     port map (
      CNT_542_rst => CNT_542_rst,
      CNT_542_up => CNT_542_up,
      Q(10 downto 0) => CNT_542(10 downto 0),
      clk => clk,
      rst => rst
    );
my_fsm_0: entity work.UART_RX_BD_UART_RX_ctl_0_0_my_fsm
     port map (
      CNT_11(3 downto 0) => CNT_11(3 downto 0),
      CNT_11_rst => CNT_11_rst,
      CNT_11_up => CNT_11_up,
      CNT_542(10 downto 0) => CNT_542(10 downto 0),
      CNT_542_rst => CNT_542_rst,
      CNT_542_up => CNT_542_up,
      RXD => RXD,
      clk => clk,
      rst => rst,
      sample => sample
    );
parity_error_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => parity_error_INST_0_i_1_n_0,
      I1 => \^data_out\(6),
      I2 => \^data_out\(7),
      I3 => \^data_out\(4),
      I4 => \^data_out\(5),
      I5 => reg_out(8),
      O => parity_error
    );
parity_error_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^data_out\(2),
      I1 => \^data_out\(3),
      I2 => \^data_out\(0),
      I3 => \^data_out\(1),
      O => parity_error_INST_0_i_1_n_0
    );
reg9_0: entity work.UART_RX_BD_UART_RX_ctl_0_0_reg9
     port map (
      CNT_11(3 downto 0) => CNT_11(3 downto 0),
      RXD => RXD,
      clk => clk,
      reg_out(8) => reg_out(8),
      reg_out(7 downto 0) => \^data_out\(7 downto 0),
      rst => rst,
      sample => sample
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_RX_BD_UART_RX_ctl_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    RXD : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    parity_error : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of UART_RX_BD_UART_RX_ctl_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of UART_RX_BD_UART_RX_ctl_0_0 : entity is "UART_RX_BD_UART_RX_ctl_0_0,UART_RX_ctl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of UART_RX_BD_UART_RX_ctl_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of UART_RX_BD_UART_RX_ctl_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of UART_RX_BD_UART_RX_ctl_0_0 : entity is "UART_RX_ctl,Vivado 2024.1";
end UART_RX_BD_UART_RX_ctl_0_0;

architecture STRUCTURE of UART_RX_BD_UART_RX_ctl_0_0 is
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst : label is "soft";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN UART_RX_BD_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.UART_RX_BD_UART_RX_ctl_0_0_UART_RX_ctl
     port map (
      RXD => RXD,
      clk => clk,
      data_out(7 downto 0) => data_out(7 downto 0),
      parity_error => parity_error,
      rst => rst
    );
end STRUCTURE;
