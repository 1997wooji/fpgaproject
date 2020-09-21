`timescale 1ns/1ps
module folder_tb;


reg clk, pushen;
wire [7:0]led;
wire [7:0]regout;

  folder UUT(
  .clk(clk),
  .pushen(pushen),
  .led(led),
  .regout(regout)
  );
   
  
  initial 
  begin
  clk=0;
  forever #30 clk=~clk;
  end

  
  initial 
  begin
   pushen=0;
	#1380 pushen=1;
	#1410 pushen=0;

  end
  
  
 
endmodule
