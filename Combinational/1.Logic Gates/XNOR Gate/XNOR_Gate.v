`timescale 1ns / 1ps

module XNOR_Gate(Y,A,B);
output Y;
input A,B;
xnor (Y,A,B);
endmodule
