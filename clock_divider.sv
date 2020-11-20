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
    input clockin, reset,
    output clockout
    ); 
    
    localparam N = 18;
    reg [N-1:0]count;
    reg [3:0] reg_d0, reg_d1, reg_d2, reg_d3;

    always @ (posedge clockin or posedge reset)
    begin
        if (reset)
            count <= 0;
        else
            count <= count + 1;
    end

    reg [6:0]sseg;
    reg [3:0]an_temp;
    reg reg_dp;
    always @ (*)
    begin
        case(count[N-1:N-2])
            2'b00: 
            begin
                sseg = reg_d0;
                an_temp = 4'b1110;
                reg_dp = 1'b1;
            end
            
            2'b01:
            begin
                sseg = reg_d1;
                an_temp = 4'b1101;
                reg_dp = 1'b0;
            end
   
            2'b10:
            begin
                sseg = reg_d2;
                an_temp = 4'b1011;
                reg_dp = 1'b1;
            end
    
            2'b11:
            begin
                sseg = reg_d3;
                an_temp = 4'b0111;
                reg_dp = 1'b0;
            end
        endcase
    end
assign an = an_temp;
     
endmodule

