`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Allison Lee & Alex Johnson
// 
// Create Date: 11/29/2020 12:42:49 AM
//////////////////////////////////////////////////////////////////////////////////


module seven_seg_sim(

    );
    logic clk, reset;
    logic [3:0] an, d0, d1, d2, d3;
    logic [6:0] Seg;
    logic [1:0] dp;
    
    seven_seg seven_seg_inst (.*);
    
    initial
    begin
        for (int i = 0; i < 16; i++)
            begin
            Seg = i;
            dp = i;
            #10;
            end
        end
endmodule