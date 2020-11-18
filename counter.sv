`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineers: Allison Lee & Alex Johnson
// 
// Create Date: 11/18/2020 10:13:24 AM
// Project Name: Digital Stopwatch
// Target Devices: Basys3
// Description: Counter for the start/stop and reset buttons
//////////////////////////////////////////////////////////////////////////////////


module counter(
    input clk,
    input reset,
    input start_stop,
    output reg d0,d1,d2,d3; 
    );
    
    reg[26:0] ticker; //247 bits (100Hz)
    wire click;
    
endmodule
