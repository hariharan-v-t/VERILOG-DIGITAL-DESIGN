`timescale 1ns / 1ps

module _4bit_Syn_up_Counter_tb;

reg clk,clear;
wire q3,q2,q1,q0;

_4bit_Syn_up_Counter uut(
    .q3(q3),
    .q2(q2),
    .q1(q1),
    .q0(q0),
    .clk(clk),
    .clear(clear)
);
initial begin
clk=1'b0;
forever #5 clk=~clk;
end 
initial begin
clear =1'b1;
#10;
clear =1'b0;
#100;
end 
initial begin
$monitor("Time=%0t | q3=%b q2=%b q=%b q=%b | clk =%b | clear=%b",
$time,q3,q2,q1,q0,clk,clear);
end
endmodule
