`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Alex Johnson and Allison Lee
// 
// Create Date: 11/24/2020 01:27:56 PM
//////////////////////////////////////////////////////////////////////////////////


module seven_seg(
    input clk,
    input reset,
    input [3:0] d0, d1, d2, d3,
    output [6:0] Seg,
    output [3:0] an,
    output [1:0]dp
    );
    
//clk divider
reg [17:0]count;

always @ (posedge clk or posedge reset)
 begin
  if (reset)
   count <= 0;
  else
   count <= count + 1;
 end

//set values
reg [6:0]sseg;
reg [3:0]an_temp;
reg dp_temp;
always @ (*)
 begin
  case(count[17:16])
   
   2'b00 : 
    begin
     sseg = d3;
     an_temp = 4'b1110;
     dp_temp = 1'b0;
    end
   
   2'b01:
    begin
     sseg = d2;
     an_temp = 4'b1101;
     dp_temp = 1'b1;
    end
   
   2'b10:
    begin
     sseg = d1;
     an_temp = 4'b1011;
     dp_temp = 1'b0;
    end
    
   2'b11:
    begin
     sseg = d0;
     an_temp = 4'b0111;
     dp_temp = 1'b1;
    end
  endcase
 end
assign an = an_temp;

//display
reg [6:0] sseg_temp;
always @ (*)
  begin
    case(sseg)
      4'h0    : sseg_temp = 7'b0000001;
      4'h1    : sseg_temp = 7'b1001111;
      4'h2    : sseg_temp = 7'b0010010; 
      4'h3    : sseg_temp = 7'b0000110;
      4'h4    : sseg_temp = 7'b1001100;
      4'h5    : sseg_temp = 7'b0100100;
      4'h6    : sseg_temp = 7'b0100000;
      4'h7    : sseg_temp = 7'b0001111;
      4'h8    : sseg_temp = 7'b0000000;
      4'h9    : sseg_temp = 7'b0000100;
      default : sseg_temp = 7'b0000001;
    endcase
  end
assign Seg = sseg_temp;
assign dp = dp_temp;
endmodule
