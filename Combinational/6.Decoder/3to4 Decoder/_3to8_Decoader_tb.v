`timescale 1ns / 1ps
module _3to8_Decoder_tb;
reg [2:0] i;
wire y0,y1,y2,y3,y4,y5,y6,y7;
_3to8_Decoder uut(
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3),
    .y4(y4),
    .y5(y5),
    .y6(y6),
    .y7(y7),
    .i(i)
);
initial
begin
    i = 3'b000;
    #10;    
    i = 3'b001;
    #10;    
    i = 3'b010;
    #10;    
    i = 3'b011;
    #10;    
    i = 3'b100;
    #10;    
    i = 3'b101;
    #10;    
    i = 3'b110;
    #10;    
    i = 3'b111;
    #10;    
    $finish;
end
initial
begin
    $monitor("Time=%0t | i=%b | y0=%b y1=%b y2=%b y3=%b y4=%b y5=%b y6=%b y7=%b",
             $time, i, y0,y1,y2,y3,y4,y5,y6,y7);
end
endmodule