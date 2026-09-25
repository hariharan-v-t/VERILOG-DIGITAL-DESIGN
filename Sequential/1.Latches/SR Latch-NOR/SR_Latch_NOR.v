`timescale 1ns / 1ps
module SR_Latch_NOR(s,r,q,qbar);
output q,qbar;
input s,r;
assign q = ~(s|qbar);
assign qbar = ~(r|q); 
endmodule
