`timescale 1ns / 1ps
module NOT_Gate_tb;
reg A;
wire Y;
NOT_Gate uut (
.Y(Y),
.A(A)
);
initial begin
A=0;
#10;
A=1;
#10;
$finish;
end 
endmodule
