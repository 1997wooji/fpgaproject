module up_counter(inter_clk, c);

input inter_clk;

output reg [7:0] c;

always @ (posedge inter_clk)
begin
	
			c <= c + 1;

end
endmodule
