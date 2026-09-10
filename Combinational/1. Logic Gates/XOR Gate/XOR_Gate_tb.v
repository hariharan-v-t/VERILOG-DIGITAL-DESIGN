`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2026 23:29:27
// Design Name: 
// Module Name: XOR_Gate_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module XOR_Gate_tb;
reg A,B;
wire Y;
XOR_Gate uut(
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


