`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Allison Lee & Alex Johnson
// 
// Create Date: 11/18/2020 11:02:00 AM
// Project Name: Digital Stopwatch
// Target Devices: Basys3
// Description: Clock divider to break down into 0.1 s
//////////////////////////////////////////////////////////////////////////////////


module clock_divider(
    input clockin,
    output clockout
    );
    
    parameter N = 17;
    reg [N-1:0] count;
    
    always@(posedge clockin)
    begin
        count <= count + 1;
    end
    
    assign clockout = count[N];   
endmodule
