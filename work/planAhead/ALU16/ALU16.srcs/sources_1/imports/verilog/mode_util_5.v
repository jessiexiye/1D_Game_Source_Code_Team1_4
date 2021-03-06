/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mode_util_5 (
    input clk,
    input rst,
    input [1:0] m,
    output reg [1:0] mode
  );
  
  
  
  always @* begin
    
    case (m)
      2'h1: begin
        mode[0+0-:1] = 1'h1;
        mode[1+0-:1] = 1'h0;
      end
      2'h2: begin
        mode[0+0-:1] = 1'h0;
        mode[1+0-:1] = 1'h1;
      end
      default: begin
        mode = 2'h0;
      end
    endcase
  end
endmodule
