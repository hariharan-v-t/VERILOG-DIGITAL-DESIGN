`timescale 1ns / 1ps
module PISO_Register(dout,d0,d1,d2,d3,clear,load,clk);
output dout;
input d0,d1,d2,d3,clear,load,clk;
reg q0,q1,q2,q3;
always @(posedge clk)
begin 
if(clear)
begin
 q3 <= 1'b0;
 q2 <= 1'b0;
 q1 <= 1'b0; 
 q0 <= 1'b0;
end
else if(load)
begin
q0<=d0;
q1<=d1;
q2<=d2;
q3<=d3;
end
else
begin
q0<=q1;
q1<=q2;
q2<=q3;
q3<=1'b0;
end
end
assign dout=q0;
endmodule
