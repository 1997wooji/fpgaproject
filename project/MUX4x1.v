
module MUX4x1_block(
input en,
input [2:0] i0,
input [2:0] i1,
input [2:0] i2,
input [2:0] i3,
input [1:0] sel,
output reg [1:0] d);
  
  
  always begin
    if(en) begin
    	if(sel == 0) d <= i0;
    	else if (sel == 1) d <= i1;
			else if (sel == 2) d <= i2;
			else if (sel == 3) d <= i3;
	 end
    else d <= 0;
  end
  
endmodule