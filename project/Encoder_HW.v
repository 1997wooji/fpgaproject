module Encoder_HW_val(i,d,en,valid);
  
  parameter bit = 8;
  parameter output_bit = 3;
  
  input [bit-1:0]i;
  input en;
  output valid;
  output [output_bit-1:0]d;
  reg valid;
  
  reg [output_bit-1:0]d;
  always @(*)begin
         if(i == 8'b00000001) begin
			d <= 3'b000;
			valid <= 1;
			end
			else if(i == 8'b00000010) begin
			d <= 3'b001;
			valid <= 1;
			end
			else if(i == 8'b00000100) begin
			d <= 3'b010;
			valid <= 1;
			end
			else if(i == 8'b00001000) begin
			d <= 3'b011;
			valid <= 1;
			end
			else if(i == 8'b00010000) begin
			d <= 3'b100;
			valid <= 1;
			end
			else if(i == 8'b00100000) begin
			d <= 3'b101;
			valid <= 1;
			end
			else if(i == 8'b01000000) begin
			d <= 3'b110;
			valid <= 1;
			end
			else if(i == 8'b10000000) begin
			d <= 3'b111;
			valid <= 1;
			end
	 
			else begin
			d <= 3'b000;
			valid = 0;
			end
    
	 end
  endmodule