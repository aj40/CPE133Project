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
    
    logic [3:0] d0,d1,d2,d3;
    
    counter counter_sw(.clk(clk), .start_stop(start_stop), .reset(reset), .d0(d0), .d1(d1), .d2(d2), .d3(d3));
    clock_divider clkdiv(.clk(clk), .reset(reset), .d0(d0), .d1(d1), .d2(d2), .d3(d3), .dp(decimal), .sseg(Seg), .an(an));
    univ_sseg sseg(.clk(clk), .valid(1), .sseg(Seg), .disp_en(an));
    
    
    
endmodule
