`timescale 1ns / 1ps
module D_Flipflop_tb;
reg d;
reg clk; 
wire q; 
wire qbar;
D_Flipflop uut(
.d(d),
.clk(clk),
.q(q),
.qbar(qbar)
);
initial begin
clk=1'b0;
forever #5 clk = ~clk;
end 
initial begin 
d=1'b0;
#10;
d=1'b1;
#10;
d=1'b0;
#10;
d=1'b1;
#10;
$finish;
end 
initial begin
$monitor ("Time=%0t | clk=%b | d=%b | q=%b qbar=%b",
$time,clk,d,q,qbar);
end
endmodule
