`timescale 1ns / 1ps
module Decoder_2to4_tb;
reg [1:0]in;
reg enable;
wire [3:0]d;
Decoder_2to4 uut (
.d(d),
.in(in),
.enable(enable)
);
initial begin
    $monitor("Time=%0t | Enable=%b | Input=%b | Output=%b",
              $time, enable, in, d);
    enable = 0;
    in = 2'b00;
    #10;
    enable = 1;
    in = 2'b00;
    #10;
    in = 2'b01;
    #10;
    in = 2'b10;
    #10;
    in = 2'b11;
    #10;
    enable = 0;
    #10;
    $finish;
end

endmodule
