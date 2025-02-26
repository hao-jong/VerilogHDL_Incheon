`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/22 11:23:28
// Design Name: 
// Module Name: my_serdes_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module my_serdes_tb;
reg CLK;
reg RST;
reg [7:0] SIN;
reg SOF_in;
wire SOF_out;
wire [7:0] SOUT;

reg [7:0] mem;

    initial 
        begin
            RST = 1;
            SIN = 0;
            SOF_in = 0;
            mem = 8'b10111101;
            
            #20 RST = 0;  // 20ns �Ŀ� ���� ����
            #10 SOF_in = 1;  // SOF_in Ȱ��ȭ
            #10 SOF_in = 0;  // SOF_in ��Ȱ��ȭ
        end
    
    initial 
        begin
            SIN = 0;
            wait(RST == 0);  // ������ ������ ������ ���
            wait(SOF_in == 1);  // SOF_in�� Ȱ��ȭ�� ������ ���
            @(posedge CLK);  // Ŭ�� ��¿����� ���� ������ ����
                SIN = mem;       
        end
    
    initial 
        begin
            CLK = 0;
            forever 
                begin
                    #5 CLK = ~CLK;
                end
        end


my_serdes serdes_0 (.CLK(CLK),.RST(RST),.SIN(SIN),.SOF_in(SOF_in),.SOF_out(SOF_out),.SOUT(SOUT));
endmodule
