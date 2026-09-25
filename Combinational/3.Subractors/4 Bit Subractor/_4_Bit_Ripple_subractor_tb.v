`timescale 1ns / 1ps
module _4_Bit_Ripple_subractor_tb;
reg [3:0]a;
reg [3:0]b;
reg bin;
wire [3:0]d;
wire bout;
_4_Bit_Ripple_Subractor uut(
.d(d),
.bout(bout),
.a(a),
.b(b),
.bin(bin)
);
initial begin
a = 4'b0000;
b = 4'b0000;
bin = 1'b0;
#10;
a = 4'b0001;
b = 4'b0010;
bin = 1'b0;
#10;
a = 4'b0101;
b = 4'b0011;
bin = 1'b0;
#10;
a = 4'b1111;
b = 4'b0001;
bin = 1'b0;
#10;
a = 4'b1111;
b = 4'b1111;
bin = 1'b1;
#10;
$finish;
end 
initial begin 
$monitor("Time=%0t | a=%b,b=%b,bin=%b | d=%b bout=%b",
$time,a,b,bin,d,bout);
end 

endmodule
