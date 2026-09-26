`timescale 1ns / 1ps
module _16to1_MUX(y,i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,s0,s1,s2,s3);
output y;
input i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,s0,s1,s2,s3;
assign  y = (~s0 & ~s1 & ~s2 & ~s3 & i0) |
        (~s0 & ~s1 & ~s2 & s3 & i1) |
        (~s0 & ~s1 & s2 & ~s3 & i2) |
        (~s0 & ~s1 & s2 & s3 & i3) |
        (~s0 & s1 & ~s2 & ~s3 & i4) |
        (~s0 & s1 & ~s2 & s3 & i5) |
        (~s0 & s1 & s2 & ~s3 & i6)|
        (~s0 & s1 & s2 & s3 & i7) |
        (s0 & ~s1 & ~s2 & ~s3 & i8) |
        (s0 & ~s1 & ~s2 & s3 & i9) |
        (s0 & ~s1 & s2 & ~s3 & i10) |
        (s0 & ~s1 & s2 & s3 & i11) |
        (s0 & s1 & ~s2 & ~s3 & i12) |
        (s0 & s1 & ~s2 & s3 & i13) |
        (s0 & s1 & s2 & ~s3 & i14) |
        (s0 & s1 & s2 & s3 & i15);
endmodule
