`timescale 1ns / 1ps

module Decoder_2to4(d,in,enable);
output reg [3:0]d;
input [1:0]in;
input enable;
always @ (*)
begin 
if(enable)
begin
case(in)
2'b00:d=4'b0001;
2'b01:d=4'b0010;
2'b10:d=4'b0100;
2'b11:d=4'b1000;
endcase
end 
else 
d=4'b0000;
end 
endmodule
