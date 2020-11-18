`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Allison Lee and Alex Johnson
// 
// Create Date: 11/18/2020 10:26:32 AM
//////////////////////////////////////////////////////////////////////////////////


module stopwatch(
    input clk,
    input start_stop,
    input reset,
    output [7:0] Seg,
    output decimal,
    output [3:0]an
    );
    
    reg[3:0] d0,d1,d2,d3; //individual counts
    reg[23:0] ticker; //24 bits to count to 10million (100Hz)
    wire click;
    
endmodule
