-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Mon Jan  6 12:15:55 2025
-- Host        : COMSYS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/FPGA_project/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_TX/ip/AXI_UART_TX_my_UART_tx_0_0/AXI_UART_TX_my_UART_tx_0_0_stub.vhdl
-- Design      : AXI_UART_TX_my_UART_tx_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AXI_UART_TX_my_UART_tx_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    send : in STD_LOGIC;
    parityselect : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    busy : out STD_LOGIC;
    sout : out STD_LOGIC
  );

end AXI_UART_TX_my_UART_tx_0_0;

architecture stub of AXI_UART_TX_my_UART_tx_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,send,parityselect,data[7:0],busy,sout";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "my_UART_tx,Vivado 2024.1";
begin
end;
