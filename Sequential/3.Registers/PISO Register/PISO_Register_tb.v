`timescale 1ns / 1ps
module PISO_Register_tb;
reg d0,d1,d2,d3;
reg clk,load,clear;
wire dout;
PISO_Register uut(
    .dout(dout),
    .d0(d0),
    .d1(d1),
    .d2(d2),
    .d3(d3),
    .clear(clear),
    .load(load),
    .clk(clk)
);
initial 
begin 
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
clear=1'b0;
load=1'b1;
d3 = 1'b1;
d2 = 1'b0;
d1 = 1'b1;
d0 = 1'b1;
#10;
load=1'b0;
#10;
#10;
#10;
#10;
$finish;
end
initial begin 
$monitor("Time=%0t | clk=%b | clear=%b | load=%b | d0=%b,d1=%b,d2=%b,d3=%b | dout=%b",
$time,clk,clear,load,d0,d1,d2,d3,dout);
end 
endmodule
