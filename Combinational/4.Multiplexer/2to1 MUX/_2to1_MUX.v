`timescale 1ns / 1ps
module _2to1_MUX(y,i0,i1,s);
output y;
input i0,i1,s;
assign y = (~s&i0)|(s&i1);
endmodule
