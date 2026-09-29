`timescale 1ns / 1ps
module PIPO_Register_tb;
reg d0;
reg d1;
reg d2;
reg d3;
reg load;
reg clk;
reg clear;
wire q3,q2,q1,q0;
PIPO_Register uut(
    .q3(q3),
    .q2(q2),
    .q1(q1),
    .q0(q0),
    .d3(d3),
    .d2(d2),
    .d1(d1),
    .d0(d0),
    .clk(clk),
    .load(load),
    .clear(clear)
);
initial begin
clk=1'b0;
forever #5 clk=~clk;
end
initial begin
clear=1'b1;
load=1'b0;
d0=1'b0;
d1=1'b0;
d2=1'b0;
d3=1'b0;
#10;
clear = 1'b0;
load = 1'b1;
d3 = 1'b1;
d2 = 1'b0;
d1 = 1'b1;
d0 = 1'b1;
#10;
d3 = 1'b0;
d2 = 1'b1;
d1 = 1'b0;
d0 = 1'b1;
#10;
d3 = 1'b0;
d2 = 1'b1;
d1 = 1'b0;
d0 = 1'b1;
#10;
load=1'b0;
d3 = 1'b1;
d2 = 1'b1;
d1 = 1'b0;
d0 = 1'b0;
#10;
load = 1'b1;
#10;
$finish;
end
initial begin
   $monitor("Time=%0t | clk=%b | clear=%b | load=%b | D=%b%b%b%b | Q=%b%b%b%b",
             $time,clk,clear,load,d3,d2,d1,d0,q3,q2,q1,q0);
end
endmodule
