`timescale 1ns / 1ps

module T_Flipflop_tb;
reg clk,t,clear;
wire q,qbar;
T_Flipflop uut(
    .q(q),
    .qbar(qbar),
    .t(t),
    .clear(clear),
    .clk(clk)
);
initial begin
clk=1'b0;
forever #5 clk=~clk;
end 
initial begin
clear=1'b1;
t=1'b0;
#10;
clear=1'b0;
t=1'b0;
#20;
t=1'b1;
#50;
t=1'b0;
#20;
$finish;
end 
initial begin
$monitor("Time=%0t | t=%b | clear=%b |clk=%b | Q=%b | Qbar=%b",
             $time,t,clear,clk,q,qbar);
end

endmodule
