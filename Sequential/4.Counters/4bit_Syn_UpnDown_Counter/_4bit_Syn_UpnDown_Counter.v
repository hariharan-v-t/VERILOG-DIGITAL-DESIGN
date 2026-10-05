`timescale 1ns / 1ps
module _4bit_Syn_UpnDown_Counter(q0,q1,q2,q3,clear,clk,up_down);
output reg q0,q1,q2,q3;
input clear,clk,up_down;
always @(posedge clk)
begin
if(clear)
begin
q0<=1'b0;
q1<=1'b0;
q2<=1'b0;
q3<=1'b0;
end 
else if (up_down)
begin
{q0,q1,q2,q3}<={q0,q1,q2,q3}+1'b1;
end
else 
begin
{q0,q1,q2,q3}<={q0,q1,q2,q3}-1'b1;
end 
end
endmodule
