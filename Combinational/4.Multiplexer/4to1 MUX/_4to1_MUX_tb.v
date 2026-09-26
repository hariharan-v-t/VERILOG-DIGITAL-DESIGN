`timescale 1ns / 1ps
module _4to1_MUX_tb;
reg i0;
reg i1;
reg i2;
reg i3;
reg s0;
reg s1;
wire y;
_4to1_MUX uut(
.i0(i0),
.i1(i1),
.i2(i2),
.i3(i3),
.s0(s0),
.s1(s1),
.y(y)
);
initial begin
i0=1'b1;
i1=1'b0;
i2=1'b1;
i3=1'b0;
    s0 = 1'b0;
    s1 = 1'b0;
    #10;
    s0 = 1'b0;
    s1 = 1'b1;
    #10;
    s0 = 1'b1;
    s1 = 1'b0;
    #10;
    s0 = 1'b1;
    s1 = 1'b1;
    #10;

    $finish;

end

initial begin

    $monitor("Time=%0t | i0=%b i1=%b i2=%b i3=%b | s0=%b s1=%b | y=%b",
             $time, i0, i1, i2, i3, s0, s1, y);
       
 end

endmodule
