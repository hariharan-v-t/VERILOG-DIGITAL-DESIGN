`timescale 1ns / 1ps
module PIPO_Register(q3,q2,q1,q0,d3,d2,d1,d0,clear,clk,load);
output q3,q2,q1,q0;
input d3,d2,d1,d0,clear,clk,load;
reg q3,q2,q1,q0;
always @(posedge clk)
begin
if(clear)
begin
q0<=1'b0;
q1<=1'b0;
q2<=1'b0;
q3<=1'b0;
end
else if(load)
begin
q0<=d0;
q1<=d1;
q2<=d2;
q3<=d3;
end
end
endmodule
