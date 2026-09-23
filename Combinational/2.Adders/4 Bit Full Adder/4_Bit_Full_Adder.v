`timescale 1ns / 1ps


module _4_bit_Full_Adder(s,cout,a,b,cin);
input [3:0]a,b;
input cin;
output [3:0]s;
output cout;
wire [2:0]c;
fa FA0(s[0],c[0],a[0],b[0],cin);
fa FA1(s[1],c[1],a[1],b[1],c[0]);
fa FA2(s[2],c[2],a[2],b[2],c[1]);
fa FA3(s[3],cout,a[2],b[2],c[2]);
endmodule
module fa(s,cout,a,b,cin);
input a,b,cin;
output s,cout;
assign s = a^b^cin;
assign cout = a^b^cin;
endmodule 

