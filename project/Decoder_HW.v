module Decoder_HW_val(i,d,en,valid);
  
  parameter bit = 3;
  parameter output_bit = 8;
  
  input [bit-1:0]i;
  input en;
  output [output_bit-1:0]d;
  output valid;
  
  reg [output_bit-1:0]d;
  reg valid;
  
  initial begin
	valid = 0;
	d = 8'b00000000;
	end
  
  always @(*) begin
    
	   if(en)begin
			case(i)
			3'b000 : begin
			d = 8'b00000001;
			valid = 1;
			end	
			3'b001 : begin
			d = 8'b00000010;
			valid = 1;
			end
			3'b010 : begin
			d = 8'b00000100;
			valid = 1;
			end
			3'b011 : begin
			d = 8'b00001000;
			valid = 1;
			end
			3'b100 : begin
			d = 8'b00010000;
			valid = 1;
			end
			3'b101: begin
			d = 8'b00100000;
			valid = 1;
			end
			3'b110 : begin
			d = 8'b01000000;
			valid = 1;
			end
			3'b111 : begin
			d = 8'b10000000;
			valid = 1;
			end
		   endcase
		end
		
		
		
		else begin
		valid = 0;
		d = 8'b00000000;
		end
			
    end
  endmodule
