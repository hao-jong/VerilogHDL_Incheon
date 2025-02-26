//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Thu Dec 12 16:43:30 2024
//Host        : COMSYS01 running 64-bit major release  (build 9200)
//Command     : generate_target myip_bfm_1_wrapper.bd
//Design      : myip_bfm_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module myip_bfm_1_wrapper
   (ACLK,
    ARESETN);
  input ACLK;
  input ARESETN;

  wire ACLK;
  wire ARESETN;

  myip_bfm_1 myip_bfm_1_i
       (.ACLK(ACLK),
        .ARESETN(ARESETN));
endmodule
