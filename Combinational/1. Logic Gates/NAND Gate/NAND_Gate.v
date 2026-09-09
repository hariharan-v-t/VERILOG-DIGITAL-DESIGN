`timescale 1ns / 1ps

module NAND_Gate(Y,A,B);
output Y;
input A,B;
nand (Y,A,B);
endmodule
