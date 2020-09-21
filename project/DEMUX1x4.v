module DEMUX1x4_block(en,i,sel,d0,d1,d2,d3);
  
  parameter bit = 3;
  parameter sel_bit = 2;
  
  input [sel_bit-1:0]sel;
  input [bit-1:0]i;
  input en;
  output [bit-1:0]d0;
  output [bit-1:0]d1;
  output [bit-1:0]d2;
  output [bit-1:0]d3;
  
  reg [bit-1:0]d0;
  reg [bit-1:0]d1;
  reg [bit-1:0]d2;
  reg [bit-1:0]d3;
  
  
  always begin
	 if(en)begin
    if(sel == 0) begin
	 d0 <= i;
	 d1 <= 0;
	 d2 <= 0;
	 d3 <= 0;
	 end
    else if(sel == 1) begin
	 d0 <= 0;
	 d1 <= i;
	 d2 <= 0;
	 d3 <= 0;
	 end
    else if(sel == 2)  begin
	 d0 <= 0;
	 d1 <= 0;
	 d2 <= i;
	 d3 <= 0;
	 end
    else if(sel == 3)  begin
	 d0 <= 0;
	 d1 <= 0;
	 d2 <= 0;
	 d3 <= i;
	 end
	 end
    else if(!en) begin
    d0 <= 0;
    d1 <= 0;
    d2 <= 0;
    d3 <= 0;
    end
  end
  
endmodule
