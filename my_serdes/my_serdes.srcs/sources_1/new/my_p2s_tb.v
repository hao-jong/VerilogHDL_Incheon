`timescale 1ns / 1ps

module my_p2s_tb;
reg CLK;
reg RST;
reg [7:0] SIN;
reg SOF_in;
wire SOF_out;
wire SOUT;

reg [7:0] mem;

    initial 
        begin
            RST = 1;
            SIN = 0;
            SOF_in = 0;
            mem = 8'b10111101;
            
            #20 RST = 0;  // 20ns 후에 리셋 해제
            #10 SOF_in = 1;  // SOF_in 활성화
            #10 SOF_in = 0;  // SOF_in 비활성화
        end
    
    initial 
        begin
            SIN = 0;
            wait(RST == 0);  // 리셋이 해제될 때까지 대기
            wait(SOF_in == 1);  // SOF_in이 활성화될 때까지 대기
          
            @(posedge CLK);  // 클럭 상승엣지에 맞춰 데이터 변경
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
    
my_p2s p2s_0(.CLK(CLK),.RST(RST),.SIN(SIN),.SOF_in(SOF_in),.SOUT(SOUT),.SOF_out(SOF_out));

endmodule
