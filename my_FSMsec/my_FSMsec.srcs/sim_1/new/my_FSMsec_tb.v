`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/28 16:38:20
// Design Name: 
// Module Name: my_FSMsec_tb
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


module my_FSMsec_tb();
    // Inputs as reg
    reg [3:0] keypad;
    reg front_door;
    reg rear_door;
    reg windows;
    reg rst;
    reg clk;
    
    // Outputs as wire
    wire [1:0] FSM_State;
    wire alarm_siren;
    
    // Instantiate the FSM module
    my_FSMsec uut (
        .keypad(keypad),
        .front_door(front_door),
        .rear_door(rear_door),
        .windows(windows),
        .rst(rst),
        .clk(clk),
        .FSM_State(FSM_State),
        .alarm_siren(alarm_siren)
    );
    // Clock generation
    initial 
        begin
            clk = 0;
            forever #5 clk = ~clk;  // 100MHz clock
        end
    
    // Test stimulus
    initial begin
        // Initialize inputs
        keypad = 4'b0000;
        front_door = 0;
        rear_door = 0;
        windows = 0;
        rst = 0;
        
        // Test Case 1: Reset
        #10 rst = 1;
        #10 rst = 0;
        
        // Test Case 2: Try to arm the system
        #20;
        keypad = 4'b0011;  // Arm code
        #10;
        keypad = 4'b0000;
        
        // Test Case 3: Trigger sensor (front door)
        #20;
        front_door = 1;
        #10;
        front_door = 0;
        
        // Test Case 4: Wait for alarm and then disarm
        #50;
        keypad = 4'b1100;  // Disarm code
        #10;
        keypad = 4'b0000;
        
        // Test Case 5: Multiple sensor triggers
        #20;
        rear_door = 1;
        #10;
        windows = 1;
        #10;
        rear_door = 0;
        windows = 0;
        
        //#start count
        
        
        // End simulation
        #100;
        $finish;
    end
    
    // Monitor changes
    initial begin
        $monitor("Time=%0t rst=%b keypad=%b front_door=%b rear_door=%b windows=%b state=%b alarm=%b",
                 $time, rst, keypad, front_door, rear_door, windows, FSM_State, alarm_siren);
    end


endmodule
