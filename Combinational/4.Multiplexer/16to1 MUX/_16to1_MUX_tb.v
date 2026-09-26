`timescale 1ns / 1ps

module _16to1_MUX_tb;

reg i0;
reg i1;
reg i2;
reg i3;
reg i4;
reg i5;
reg i6;
reg i7;
reg i8;
reg i9;
reg i10;
reg i11;
reg i12;
reg i13;
reg i14;
reg i15;
reg s0;
reg s1;
reg s2;
reg s3;
wire y;

_16to1_MUX uut(
    .y(y),
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .i4(i4),
    .i5(i5),
    .i6(i6),
    .i7(i7),
    .i8(i8),
    .i9(i9),
    .i10(i10),
    .i11(i11),
    .i12(i12),
    .i13(i13),
    .i14(i14),
    .i15(i15),
    .s0(s0),
    .s1(s1),
    .s2(s2),
    .s3(s3)
);

initial begin
    i0  = 1'b0;
    i1  = 1'b1;
    i2  = 1'b0;
    i3  = 1'b1;
    i4  = 1'b0;
    i5  = 1'b1;
    i6  = 1'b0;
    i7  = 1'b1;
    i8  = 1'b0;
    i9  = 1'b1;
    i10 = 1'b0;
    i11 = 1'b1;
    i12 = 1'b0;
    i13 = 1'b1;
    i14 = 1'b0;
    i15 = 1'b1;
    s0 = 0; s1 = 0; s2 = 0; s3 = 0;
    #10;
    s0 = 0; s1 = 0; s2 = 0; s3 = 1;
    #10;
    s0 = 0; s1 = 0; s2 = 1; s3 = 0;
    #10;
    s0 = 0; s1 = 0; s2 = 1; s3 = 1;
    #10;
    s0 = 0; s1 = 1; s2 = 0; s3 = 0;
    #10;
    s0 = 0; s1 = 1; s2 = 0; s3 = 1;
    #10;
    s0 = 0; s1 = 1; s2 = 1; s3 = 0;
    #10;
    s0 = 0; s1 = 1; s2 = 1; s3 = 1;
    #10;
    s0 = 1; s1 = 0; s2 = 0; s3 = 0;
    #10;
    s0 = 1; s1 = 0; s2 = 0; s3 = 1;
    #10;
    s0 = 1; s1 = 0; s2 = 1; s3 = 0;
    #10;
    s0 = 1; s1 = 0; s2 = 1; s3 = 1;
    #10;
    s0 = 1; s1 = 1; s2 = 0; s3 = 0;
    #10;
    s0 = 1; s1 = 1; s2 = 0; s3 = 1;
    #10;
    s0 = 1; s1 = 1; s2 = 1; s3 = 0;
    #10;
    s0 = 1; s1 = 1; s2 = 1; s3 = 1;
    #10;
    $finish;
end
initial begin
    $monitor("Time=%0t | s0=%b s1=%b s2=%b s3=%b | y=%b",
             $time, s0, s1, s2, s3, y);
end
endmodule
