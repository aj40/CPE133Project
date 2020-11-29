`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Allison Lee & Alex Johnson
// 
// Create Date: 11/29/2020 01:55:36 AM
//////////////////////////////////////////////////////////////////////////////////


module stopwatch_sim(

    );
    logic clk, start_stop, reset, dp;
    logic [6:0] Seg;
    logic [3:0] an;
    logic [1:0] dp;
    
    stopwatch stopwatch_inst (.*);
    
    always
    begin
    clk = 1; #5;
    clk = 0; #5;
    end
    
    initial
    begin
    //0
    start_stop = 1; reset = 0;
    #10;
    
    //1
    start_stop = 0; reset = 0;
    #10;
    
    //2
    start_stop = 0; reset = 1;
    #10;
    
    //3
    start_stop = 1; reset = 1;
    #10;
    
    end   
endmodule
