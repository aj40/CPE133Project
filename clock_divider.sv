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
    input clk, reset,
    input reg [3:0] d0,d1,d2,d3,
    output [3:0] an,
    output reg dp,
    output [7:0] sseg
    ); 
    
    localparam N = 18;
    reg [N-1:0]count;

    always @ (posedge clk or posedge reset)
    begin
        if (reset)
            count <= 0;
        else
            count <= count + 1;
    end

    reg [3:0]an_temp;
    reg reg_dp;
    always @ (*)
    begin
        case(count[N-1:N-2])
            2'b00: 
            begin
                sseg = d0;
                an_temp = 4'b1110;
                reg_dp = 1'b1;
            end
            
            2'b01:
            begin
                sseg = d1;
                an_temp = 4'b1101;
                reg_dp = 1'b0;
            end
   
            2'b10:
            begin
                sseg = d2;
                an_temp = 4'b1011;
                reg_dp = 1'b1;
            end
    
            2'b11:
            begin
                sseg = d3;
                an_temp = 4'b0111;
                reg_dp = 1'b0;
            end
        endcase
    end
assign an = an_temp;
assign dp = reg_dp
     
endmodule

