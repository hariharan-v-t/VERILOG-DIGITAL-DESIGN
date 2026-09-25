`timescale 1ns / 1ps
module Full_Subractor_tb;
reg a;
reg b;
reg bin;
wire d;
wire bout;
Full_Subractor uut(
.a(a),
.b(b),
.bin(bin),
.d(d),
.bout(bout)
);
initial begin 
a = 1'b0;
b = 1'b0;
bin = 1'b0;
#10;

a = 1'b0;
b = 1'b0;
bin = 1'b1;
#10;

a = 1'b0;
b = 1'b1;
bin = 1'b0;
#10;

a = 1'b0;
b = 1'b1;
bin = 1'b1;
#10;

a = 1'b1;
b = 1'b0;
bin = 1'b0;
#10;

a = 1'b1;
b = 1'b0;
bin = 1'b1;
#10;

a = 1'b1;
b = 1'b1;
bin = 1'b0;
#10;

a = 1'b1;
b = 1'b1;
bin = 1'b1;
#10;
$finish;
end
initial begin 
$monitor("Time=%0t | a=%b,b=%b,bin=%b | d=%b, bout=%b",
$time,a,b,bin,d,bout);
end
endmodule
