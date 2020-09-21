module ud_counter_block(inter_clk, cnt, c, tc);

input inter_clk, cnt;

output tc;
output reg [2:0] c;

assign tc = (cnt == 1'b1)? &c : !(|c);

always @ (posedge inter_clk) 
begin

		if(cnt == 1)
		begin

				c <= c + 1;
			end
			
		else
		begin
			c <= c;
		end

end

endmodule