`timescale 1ns / 1ps
module _1to2_DEMUX(y0,y1,d,s);
output y0,y1;
input d,s;
assign y0 = (d&~s);
assign y1 = (d&s);
endmodule
