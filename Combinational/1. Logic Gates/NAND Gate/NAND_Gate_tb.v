`timescale 1ns / 1ps

module NAND_Gate_tb;
reg A,B;
wire Y;
NAND_Gate uut(
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
