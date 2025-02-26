`timescale 1ns / 1ps
module my_s2p_tb;
reg CLK;
reg RST;
reg SIN;
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
    
    // ������ ����
    initial 
        begin
            SIN = 0;
            wait(RST == 0);  // ������ ������ ������ ���
            wait(SOF_in == 1);  // SOF_in�� Ȱ��ȭ�� ������ ���
            
            for(integer i=7; i>=0; i=i-1) 
            begin
                @(posedge CLK);  // Ŭ�� ��¿����� ���� ������ ����
                SIN = mem[i];
            end
        end

    // Ŭ�� ����
    initial 
        begin
            CLK = 0;
            forever 
                begin
                    #5 CLK = ~CLK;
                end
        end



my_s2p s2p_0(.CLK(CLK),.RST(RST),.SIN(SIN),.SOF_in(SOF_in),.SOF_out(SOF_out),.SOUT(SOUT));


endmodule
