`timescale 1ns / 1ps
module _4bit_Syn_up_Counter(q0,q1,q2,q3,clk,clear);
output reg q0,q1,q2,q3;
input clk,clear;
always @(posedge clk)
begin 
if (clear)
begin
        q3 <= 1'b0;
        q2 <= 1'b0;
        q1 <= 1'b0;
        q0 <= 1'b0;
 end
else 
begin
       {q3,q2,q1,q0}<={q3,q2,q1,q0}+1;
end
end
endmodule
