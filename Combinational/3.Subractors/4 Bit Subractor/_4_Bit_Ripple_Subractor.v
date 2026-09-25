`timescale 1ns / 1ps
module _4_Bit_Ripple_Subractor(d,bout,a,b,bin);
input [3:0]a,b;
input bin;
output [3:0]d;
output bout;
wire [2:0]w;
fs FS0(d[0],w[0],a[0],b[0],bin);
fs FS1(d[1],w[1],a[1],b[1],w[0]);
fs FS2(d[2],w[2],a[2],b[2],w[1]);
fs FS3(d[3],bout,a[3],b[3],w[2]);
endmodule
module fs(d,bout,a,b,bin);
input a,b,bin;
output d,bout;
assign d = a^b^bin;
assign bout = (~a&b)|(~a&bin)|(b&bin);
endmodule
