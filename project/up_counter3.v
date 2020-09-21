module up_counter3(inter_clk,c);

input inter_clk;

output reg [2:0] c;

always @ (posedge inter_clk)


		begin 
			c <= c + 1;
		end



endmodule
