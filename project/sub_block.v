module sub_block(a,b,dif);
  
  parameter bit = 3;
 
  input [bit-1:0] a;
  input [bit-1:0] b;
  
  output [bit-1:0] dif;
   
   assign dif = a - b;
   
 endmodule
   
