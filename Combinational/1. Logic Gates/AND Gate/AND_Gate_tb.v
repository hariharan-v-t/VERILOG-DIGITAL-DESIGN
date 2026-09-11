`timescale 1ns / 1ps
module AND_Gate_tb;
reg A,B;
wire Y;
AND_gate uut(
 .Y(Y),
 .A(A),
 .B(B)
 );
initial begin
 A=0;
 B=0;
 #10;
 A=0;
 B=1;
 #10;
 A=1;
 B=0;
 #10;
 A=1;
 B=1;
 #10;
 $finish;
 end
endmodule
