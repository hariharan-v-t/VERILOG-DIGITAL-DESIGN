`timescale 1ns / 1ps

module _1to2_DEMUX_tb;
reg d;
reg s;
wire y0;
wire y1;
_1to2_DEMUX uut(
    .y0(y0),
    .y1(y1),
    .d(d),
    .s(s)
);
initial begin
    d = 1'b0;
    s = 1'b0;
    #10;
    d = 1'b0;
    s = 1'b1;
    #10;
    d = 1'b1;
    s = 1'b0;
    #10;
    d = 1'b1;
    s = 1'b1;
    #10;
    $finish;
end

initial begin
    $monitor("Time=%0t | d=%b s=%b | y0=%b y1=%b",
             $time, d, s, y0, y1);
end

endmodule
