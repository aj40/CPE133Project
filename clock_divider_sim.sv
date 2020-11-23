`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Allison Lee & Alex Johnson
// 
// Create Date: 11/23/2020 10:39:54 AM
//////////////////////////////////////////////////////////////////////////////////


module clock_divider_sim(

    );
    logic clk, reset, dp;
    logic [3:0] d0, d1, d2, d3, an;
    logic [7:0] sseg;
    
    clock_divider clock_divider_inst (.*);
    
    always
    begin
        reset = 0; #5;
        reset = 1; #5;
    end
    
    initial
    begin
        clk = 0;
        forever
            #10;
            clk = ~clk;
    end
endmodule
