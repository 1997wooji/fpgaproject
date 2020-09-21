module full_adder_block0(a,b,ci,s,co);

input a, b, ci;

output reg co, s;


always @(*)
begin
	s <= a ^ b ^ ci;
	co <= (a && b)||((a ^ b) && ci);
end 

endmodule
