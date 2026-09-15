`timescale 1ns / 1ps
module Full_Adder(s,cout,a,b,cin);
output s,cout;
input a,b,cin;
assign s = a^b^cin;
assign cout = (a&b)|(b&cin)|(cin&a);
endmodule
