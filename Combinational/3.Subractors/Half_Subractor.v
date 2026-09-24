`timescale 1ns / 1ps
module Half_Subractor(d,bw,a,b);
input a,b;
output  d,bw;
assign d = a^b;
assign bw =!a&b;
endmodule
