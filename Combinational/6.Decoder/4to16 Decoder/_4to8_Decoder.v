`timescale 1ns / 1ps


module _4to16_Decoder(y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,i);
output reg y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15;
input [3:0]i;
always @(*)
begin 
    y0  = 1'b0;
    y1  = 1'b0;
    y2  = 1'b0;
    y3  = 1'b0;
    y4  = 1'b0;
    y5  = 1'b0;
    y6  = 1'b0;
    y7  = 1'b0;
    y8  = 1'b0;
    y9  = 1'b0;
    y10 = 1'b0;
    y11 = 1'b0;
    y12 = 1'b0;
    y13 = 1'b0;
    y14 = 1'b0;
    y15 = 1'b0;
case (i)
    4'b0000: y0  = 1'b1;
    4'b0001: y1  = 1'b1;
    4'b0010: y2  = 1'b1;
    4'b0011: y3  = 1'b1;
    4'b0100: y4  = 1'b1;
    4'b0101: y5  = 1'b1;
    4'b0110: y6  = 1'b1;
    4'b0111: y7  = 1'b1;
    4'b1000: y8  = 1'b1;
    4'b1001: y9  = 1'b1;
    4'b1010: y10 = 1'b1;
    4'b1011: y11 = 1'b1;
    4'b1100: y12 = 1'b1;
    4'b1101: y13 = 1'b1;
    4'b1110: y14 = 1'b1;
    4'b1111: y15 = 1'b1;
    endcase
    end


endmodule
