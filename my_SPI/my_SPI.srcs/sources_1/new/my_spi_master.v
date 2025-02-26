`timescale 1ns / 1ps
 


module my_spi_master(
input clk,
input rst,
input [31:0] addr,
input [31:0] wr_data,
input [31:0] CMD,
input bvalid,
output [31:0] rd_data,

output reg [1:0] CSN,
output SCLK,
output reg MOSI,
input SOMI
    );

reg sclk;
reg [9:0] CNT;
reg [3:0] SCLK_CNT;


////////////
//SCLK_gen//
////////////

always@(posedge clk)
begin
    if(rst)
    begin 
      sclk <= 1'b0;
      SCLK_CNT <= 4'b0;
    end
    else if (SCLK_CNT<5)
    begin
        sclk <= 1'b1;
        SCLK_CNT <= SCLK_CNT + 1;
    end
    else if (SCLK_CNT < 9)
    begin
        sclk <= 1'b0;
        SCLK_CNT <= SCLK_CNT + 1;
    end
    else //(SCLK_CNT >= 9)
    begin
        SCLK_CNT <= 4'b0;
    end
end
reg [1:0] curr_state;

///////
//FSM//
///////



always @ (posedge clk)
begin
    if(rst)
        curr_state <= 0;
    else
    begin
        case (curr_state)
            2'b00 :
            begin
                if((CMD[0] == 1)&& (bvalid == 1))
                    curr_state <= 2'b01;
                else
                    curr_state <= 2'b00;
            end
            2'b01 :
            begin  
                if(CNT % 10 == 0)
                    begin
                    MOSI <= wr_data[CNT/10];
                    end
            
              
                if(CNT >= 319)
                    curr_state <= 2'b00;
                else
                    curr_state <= 2'b01;
            end
        endcase
    end
end

///////
//CNT//
///////

always @ (posedge clk)
begin
    if(rst)
    CNT <= 0;
    else 
    begin
        if(curr_state != 0)
            CNT <= CNT +1;
            CSN = ~addr[1:0];
        if(CNT == 319)
            CNT <= 0;

    end
end
    
endmodule    