`timescale 1ns / 1ps

module SIPO_Register(q3,q2,q1,q0,din,clk,clear,load);
output q3,q2,q1,q0;
input din,clk,clear,load;
reg q3,q2,q1,q0;
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
q3 <= q2;
q2 <= q1;
q1 <= q0;
q0 <= din;
end 
end

endmodule
