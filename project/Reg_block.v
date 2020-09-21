module Reg_block(clk, en, in, out);
  
  parameter N = 8;
  
  input clk,en;
  input [N-1:0]in;
  output reg [N-1:0]out;
  

  always @(posedge clk)
  begin

    	if (en == 1)
    	begin
    		out <= in;
    	end
    	else
    	begin
    		out <= out;
    	end

  end
  
endmodule
  
  