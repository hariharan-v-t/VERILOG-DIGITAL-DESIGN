`timescale 1ns / 1ps
module D_Flipflop(q,qbar,clk,d);
output reg q,qbar;
input clk,d;
always @(posedge clk) 
begin
q<=d;
qbar<=~d;
end
endmodule
