module add_block(a,b,sum);
  
  parameter bit = 2;
 
  input [bit-1:0] a;
  input [bit-1:0] b;
  
  output [bit-1:0] sum;
   
   assign sum = a + b;
   
 endmodule
   