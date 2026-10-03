`timescale 1ns / 1ps
module _3to8_Decoder(y0,y1,y2,y3,y4,y5,y6,y7,i);
output reg  y0,y1,y2,y3,y4,y5,y6,y7;
input  [2:0]i;
always @(*) 
begin 
y0 = 1'b0;
y1 = 1'b0;
y2 = 1'b0;
y3 = 1'b0;
y4 = 1'b0;
y5 = 1'b0;
y6 = 1'b0;
y7 = 1'b0;
case (i)
3'b000:
y0=1'b1;
3'b001:
y1=1'b1;
3'b010:
y2=1'b1;
3'b011:
y3=1'b1;
3'b100:
y4=1'b1;
3'b101:
y5=1'b1;
3'b110:
y6=1'b1;
3'b111:
y7=1'b1;
endcase
end 
endmodule
