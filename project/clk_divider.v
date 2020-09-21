module clk_divider(clk, inter_clk);

input	clk;

output reg inter_clk;

reg [25:0] clk_cnt;


always@(posedge clk)
	begin
	
	if(clk_cnt == 26'd25_000_000) 
		begin
			clk_cnt <= 26'd0;
			inter_clk <= 1;
		end
		else begin
			clk_cnt <= clk_cnt + 1'b1;
			inter_clk <= 0;
		end
	end
endmodule