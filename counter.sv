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
    input start_stop,
    output reg d0,d1,d2,d3 
    );
    
    reg[26:0] ticker; //27 bits (100MHz)
    logic click;
    
    always @ (posedge clock or posedge reset)
begin
 if(reset)

  ticker <= 0;

    else if(ticker == 10000000) 
  ticker <= 0;
 else if(start) 
  ticker <= ticker + 1;
end

    assign click = ((ticker == 10000000)?1'b1:1'b0); 

always @ (posedge clk or posedge reset)
begin
 if (reset)
  begin
    d0 <= 0;
    d1 <= 0;
    d2 <= 0;
    d3 <= 0;
  end
  
 else if (click) 
  begin
   if(d0 == 9)
   begin  
     d0 <= 0;
    
    if (d1 == 9)  
    begin  
      d1 <= 0;
     if (d2 == 5) 
     begin 
       d2 <= 0;
      if(d3 == 9) 
        d3 <= 0;
      else
        d3 <= d3 + 1;
     end
     else 
      d2 <= d2 + 1;
    end
    
    else 
     d1 <= d1 + 1;
   end 
   
   else 
    d0 <= d0 + 1;
  end 
end
endmodule
