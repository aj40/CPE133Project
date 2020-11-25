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
    output [6:0] Seg,
    output [3:0]an,
    output dp
    );
    reg [3:0] t0, t1, t2, t3;
    
    counter counter_sw(.clk(clk), .start_stop(start_stop), .reset(reset), .d0(t0), .d1(t1), .d2(t2), .d3(t3));
    seven_seg seg(.clk(clk), .reset(reset), .d0(t0), .d1(t1), .d2(t2), .d3(t3), .Seg(Seg), .an(an), .dp(dp));
    
    
    
endmodule
