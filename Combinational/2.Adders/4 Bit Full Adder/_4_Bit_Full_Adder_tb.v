`timescale 1ns / 1ps
module _4_Bit_Full_Adder_tb;
reg [3:0]a;
reg [3:0]b;
reg cin;
wire [3:0]s;
wire cout;
_4_bit_Full_Adder uut(
.s(s),
.cout(cout),
.a(a),
.b(b),
.cin(cin)
);
initial begin
a = 4'b0000;
b = 4'b0000;
cin = 1'b0;
#10;
a = 4'b0001;
b = 4'b0010;
cin = 1'b0;
#10;
a = 4'b0101;
b = 4'b0011;
cin = 1'b0;
#10;
a = 4'b1111;
b = 4'b0001;
cin = 1'b0;
#10;
a = 4'b1111;
b = 4'b1111;
cin = 1'b1;
#10;
$finish;
end 
initial begin 
$monitor("Time=%0t | a=%b,b=%b,cin=%b | s=%b cout=%b",
$time,a,b,cin,s,cout);
end 
endmodule
