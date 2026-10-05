`timescale 1ns / 1ps

module _4bit_Asyn_Up_Counter_tb;

reg clk,clear;
wire q0,q1,q2,q3;

_4bit_Asyn_Up_Counter uut(
    .q0(q0),
    .q1(q1),
    .q2(q2),
    .q3(q3),
    .clk(clk),
    .clear(clear)
);
initial
begin
    clk = 1'b0;
    forever #5 clk = ~clk;
end
initial
begin
clear = 1'b1;
#10;
clear = 1'b0;
#200;
$finish;
end
initial
begin
$monitor("Time=%0t | clear=%b | clk=%b | q3=%b q2=%b q1=%b q0=%b",
$time,clear,clk,q3,q2,q1,q0);
end
endmodule