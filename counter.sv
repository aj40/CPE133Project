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
    input start_stop
    );
    
    reg [13:0] ticks;
    logic clock_out;
    
    always @ (posedge clk or posedge reset)
        begin
            if(reset)
                ticks <= 0;
            else if(ticks == 10000000) 
                ticks <= 0;
            else if(start_stop) 
                ticks <= ticks + 1;
        end
    assign tick_output = ticks;
endmodule
