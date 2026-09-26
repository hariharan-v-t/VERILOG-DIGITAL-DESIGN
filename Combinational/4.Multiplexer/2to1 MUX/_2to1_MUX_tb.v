`timescale 1ns / 1ps

module _2to1_MUX_tb;

reg i0;
reg i1;
reg s;

wire y;

_2to1_MUX uut(
    .y(y),
    .i0(i0),
    .i1(i1),
    .s(s)
);

initial begin

    i0 = 0; i1 = 0; s = 0;
    #10;

    i0 = 0; i1 = 0; s = 1;
    #10;

    i0 = 0; i1 = 1; s = 0;
    #10;

    i0 = 0; i1 = 1; s = 1;
    #10;

    i0 = 1; i1 = 0; s = 0;
    #10;

    i0 = 1; i1 = 0; s = 1;
    #10;

    i0 = 1; i1 = 1; s = 0;
    #10;

    i0 = 1; i1 = 1; s = 1;
    #10;

    $finish;

end

initial begin

    $monitor("Time=%0t | i0=%b i1=%b s=%b | y=%b",
             $time, i0, i1, s, y);

end

endmodule