`timescale 1ns / 1ps


module SIPO_Register_tb;
reg din;
reg load;
reg clk;
reg clear;
wire q3,q2,q1,q0;
SIPO_Register uut(
.din(din),
.load(load),
.clk(clk),
.clear(clear),
.q3(q3),
.q2(q2),
.q1(q1),
.q0(q0)
);
initial 
begin
clk=1'b0;
forever #5 clk=~clk;
end 
initial
begin
clear=1'b1;
load=1'b0;
din=1'b0;
#10;
load = 1'b1;
clear = 1'b0;
din = 1'b1;
#10;
din = 1'b0;
#10;
din = 1'b1;
#10;
din = 1'b1;
#10;
din = 1'b0;
#10;
$finish;
end
initial begin
$monitor ("Time=%0t | clk=%b |load=%b | clear=%b | din=%b |  q3=%b q2=%b q1=%b q0=%b", 
$time,clk,load,clear,din,q3,q2,q1,q0);
end
endmodule
