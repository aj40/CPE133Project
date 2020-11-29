`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Allison Lee & Alex Johnson
// 
// Create Date: 11/29/2020 01:34:00 AM
//////////////////////////////////////////////////////////////////////////////////


module counter_sim(

    );
    logic clk, reset, start_stop;
    logic [3:0] d0, d1, d2, d3;
    
    counter counter_inst (.*);
    
    counter dut(clk, reset, ticks);
    initial
    begin
        clk = 0;
        forever #5;
        clk = ~clk;
    end
    
    initial
    begin
        reset = 1;
        #5;
        reset = 0;
    end
endmodule
