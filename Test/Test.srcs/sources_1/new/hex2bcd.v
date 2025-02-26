`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/20 12:15:33
// Design Name: 
// Module Name: hex2bcd
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


module hex2bcd(
input [6:0] hex2bcd_in,
output reg [3:0] high_digit,
output reg [3:0] low_digit
    );
 
 always @ (*)
 begin
    if (hex2bcd_in < 80)
    begin
        if(hex2bcd_in < 40)
        begin
            if(hex2bcd_in < 20)
            begin
                if(hex2bcd_in < 10)
                begin
                    high_digit <= 0;
                    low_digit <= hex2bcd_in - 0;
                end
                else //(hex2bcd_in >= 10)
                begin
                    high_digit <= 1;
                    low_digit <= hex2bcd_in - 10;
                end   
            end
            else //(hex2bcd_in >= 20)
            begin
                if(hex2bcd_in < 30)
                begin
                    high_digit <= 2;
                    low_digit <= hex2bcd_in - 20;
                end
                else //(hex2bcd_in >= 30)
                begin
                    high_digit <= 3;
                    low_digit <= hex2bcd_in - 30;
                end   
            end   
        end
        else //(hex2bcd_in >= 40)
        begin
            if(hex2bcd_in < 60)
            begin
                if(hex2bcd_in < 50)
                begin
                    high_digit <= 4;
                    low_digit <= hex2bcd_in - 40;
                end
                else //(hex2bcd_in >= 50)
                begin
                    high_digit <= 5;
                    low_digit <= hex2bcd_in - 50;
                end   
            end
            else //(hex2bcd_in >= 60)
            begin
                if(hex2bcd_in < 70)
                begin
                    high_digit <= 6;
                    low_digit <= hex2bcd_in - 60;
                end
                else //(hex2bcd_in >= 70)
                begin
                    high_digit <= 7;
                    low_digit <= hex2bcd_in - 70;
                end   
            end
        end           
    end
    else //(hex2bcd_in >= 80)
    begin
                if(hex2bcd_in < 90)
                begin
                    high_digit <= 8;
                    low_digit <= hex2bcd_in - 80;
                end
                else //(hex2bcd_in >= 90)
                begin
                    high_digit <= 9;
                    low_digit <= hex2bcd_in - 90;
                end   
    end
end   
endmodule
