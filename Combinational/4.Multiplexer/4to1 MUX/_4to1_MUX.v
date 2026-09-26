`timescale 1ns / 1ps
module _4to1_MUX(y,i0,i1,i2,i3,s0,s1);
output y;
input i0,i1,i2,i3,s0,s1;
assign y = (~s0&~s1&i0)|(~s0&s1&i1)|(s0&~s1&i2)|(s0&s1&i3);
endmodule
