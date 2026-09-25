`timescale 1ns / 1ps
module Full_Subractor(d,bout,a,b,bin);
input a,b,bin;
output d,bout;
assign d=a^b^bin;
assign bout = (!a&b)|(!a^b)&bin;
endmodule
