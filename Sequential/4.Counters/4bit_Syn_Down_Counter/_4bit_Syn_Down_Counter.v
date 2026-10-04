`timescale 1ns / 1ps
module _4bit_Syn_Down_Counter(q0,q1,q2,q3,clear,clk);
output reg q0,q1,q2,q3;
input clear,clk;
always @(posedge clk)
begin
if(clear)
begin
q0<=1'b1;
q1<=1'b1;
q2<=1'b1;
q3<=1'b1;
end
else 
begin
{q0,q1,q2,q3}<={q0,q1,q2,q3}-1;
end
end
endmodule
