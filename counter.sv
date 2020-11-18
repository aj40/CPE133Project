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
    output reg d0,d1,d2,d3; 
    );
    
    reg[23:0] ticker; //24 bits to count to 10million (100Hz)
    wire click;
    
endmodule
