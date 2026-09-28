`timescale 1ns / 1ps
module SISO_Register_tb;
reg din;
reg clk;
reg load;
reg clear;
wire dout;
SISO_Register uut(
.din(din),
.clk(clk),
.load(load),
.clear(clear),
.dout(dout)
);
initial 
begin
clk = 1'b0;
forever #5 clk=~clk;
end 
initial 
begin
load=1'b0;
clear=1'b1;
din=1'b0;
#10;
load=1'b1;
clear=1'b0;
din=1'b1;
#10;
din=1'b0;
#10;
din=1'b1;
#10;
din=1'b1;
#10;
load=1'b0;
#10;
$finish;
end
initial begin
$monitor("Time=%0t | clk=%b | clear=%b | load=%b | din=%b | dout=%b ",
$time,clk,clear,load,din,dout);
end
endmodule
