`timescale 1ns / 1ps
module SISO_Register(dout,din,clk,load,clear);
output dout;
input din,clk,load,clear;
reg [3:0]q;
always @(posedge clk) 
begin 
if(clear)
begin 
q<=4'b0000;
end 
else if (load)
begin
q[3]<=q[2];
q[2]<=q[1];
q[1]<=q[0];
q[0]<=din;
end
end
assign dout = q[3];
endmodule
