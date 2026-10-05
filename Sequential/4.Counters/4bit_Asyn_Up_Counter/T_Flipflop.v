`timescale 1ns / 1ps


module T_Flipflop(q,qbar,clk,t,clear);
output reg q,qbar;
input clk,t,clear;
always @(posedge clk or posedge clear)begin
if (clear)
begin
q<=1'b0;
qbar<=1'b1;
end
else if(t)
begin
q<=~q;
qbar<=q;
end
 end 
endmodule
