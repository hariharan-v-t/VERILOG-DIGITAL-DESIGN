`timescale 1ns / 1ps



module _1to4_DEMUX_tb;
reg d;
reg s0;
reg s1;
wire y0,y1,y2,y3;
_1to4_DEMUX uut(
.y0(y0),
.y1(y1),
.y2(y2),
.y3(y3),
.d(d),
.s0(s0),
.s1(s1)
);
initial
begin
d = 1'b0;
s1 = 1'b0;
s0 = 1'b0;
#10;
d = 1'b1;
s1 = 1'b0;
s0 = 1'b0;
#10;
s1 = 1'b0;
s0 = 1'b1;
#10;
s1 = 1'b1;
s0 = 1'b0;
#10;
s1 = 1'b1;
s0 = 1'b1;
#10;
d = 1'b0;
#10;
$finish;
end
initial
begin
    $monitor("Time=%0t | d=%b | s1=%b s0=%b | y0=%b y1=%b y2=%b y3=%b",
    $time,d,s1,s0,y0,y1,y2,y3);
end
endmodule
