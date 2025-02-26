-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Tue Jan  7 11:48:04 2025
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/FPGA_project/AXI_UART_RX/AXI_UART_RX.gen/sources_1/bd/UART_RX_BD/ip/UART_RX_BD_UART_RX_ctl_0_0/UART_RX_BD_UART_RX_ctl_0_0_stub.vhdl
-- Design      : UART_RX_BD_UART_RX_ctl_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UART_RX_BD_UART_RX_ctl_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    RXD : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    parity_error : out STD_LOGIC
  );

end UART_RX_BD_UART_RX_ctl_0_0;

architecture stub of UART_RX_BD_UART_RX_ctl_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,RXD,data_out[7:0],parity_error";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "UART_RX_ctl,Vivado 2024.1";
begin
end;
