module Seven_Segmentc(i,d);
  
  parameter output_bit = 7;
  
  input i;
  output [output_bit-1:0]d;
  
  reg [output_bit-1:0]d;
  
 
  always @(*) begin
	 if(i == 1'b1) d <= 7'b100_0110; //C
	 else d<=7'b111_1111;
    end
  endmodule

