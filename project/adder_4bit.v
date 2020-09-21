module adder_4bit(a,cin,s,co);

// input
input [1:0] a; 
input cin;

// output
output reg [1:0] s; 
output reg co; // 1비트 co 변수 선언

always @(*)
begin
	{co,s} <= a + cin; 
end

endmodule
