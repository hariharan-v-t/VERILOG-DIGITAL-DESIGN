`timescale 1ns / 1ps

module NOR_Gate(Y,A,B);
output Y;
input A,B;
nor (Y,A,B);
endmodule
