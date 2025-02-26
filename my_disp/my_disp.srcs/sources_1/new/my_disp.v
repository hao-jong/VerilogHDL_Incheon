`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/22 15:11:49
// Design Name: 
// Module Name: my_disp
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


module my_disp(
input [3:0] binary_num, 
input BTN,
output [6:0]AN,
output CN
  
);
reg [3:0] digit_0, digit_1;
wire [3:0] disp_data;
assign disp_data = BTN ? digit_1 : digit_0;
assign CN = BTN;

always @(*) 
begin
    case (binary_num)
        4'd0:  begin digit_0 = 4'd0; digit_1 = 4'd0; end
        4'd1:  begin digit_0 = 4'd1; digit_1 = 4'd0; end      
        4'd2:  begin digit_0 = 4'd2; digit_1 = 4'd0; end
        4'd3:  begin digit_0 = 4'd3; digit_1 = 4'd0; end
        4'd4:  begin digit_0 = 4'd4; digit_1 = 4'd0; end
        4'd5:  begin digit_0 = 4'd5; digit_1 = 4'd0; end
        4'd6:  begin digit_0 = 4'd6; digit_1 = 4'd0; end
        4'd7:  begin digit_0 = 4'd7; digit_1 = 4'd0; end           
        4'd8:  begin digit_0 = 4'd8; digit_1 = 4'd0; end
        4'd9:  begin digit_0 = 4'd9; digit_1 = 4'd0; end      
        4'd10: begin digit_0 = 4'd0; digit_1 = 4'd1; end
        4'd11: begin digit_0 = 4'd1; digit_1 = 4'd1; end
        4'd12: begin digit_0 = 4'd2; digit_1 = 4'd1; end
        4'd13: begin digit_0 = 4'd3; digit_1 = 4'd1; end
        4'd14: begin digit_0 = 4'd4; digit_1 = 4'd1; end
        4'd15: begin digit_0 = 4'd5; digit_1 = 4'd1; end
        default: begin digit_0 = 4'd0; digit_1 = 4'd0; end
    endcase
end

my_sw2LED SW2L_0(.SW(disp_data),.AN(AN),.CN());
endmodule
