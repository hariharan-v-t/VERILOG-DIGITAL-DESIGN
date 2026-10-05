`timescale 1ns / 1ps
module _4bit_Syn_UpnDown_Counter_tb;
reg clear,clk,up_down;
wire q0,q1,q2,q3;
_4bit_Syn_UpnDown_Counter uut(
    .q0(q0),
    .q1(q1),
    .q2(q2),
    .q3(q3),
    .clear(clear),
    .clk(clk),
    .up_down(up_down)
);

initial
begin
    clk = 1'b0;
    forever #5 clk = ~clk;
end

initial
begin
    clear = 1'b1;
    up_down = 1'b1;
    #10;
    clear = 1'b0;
    up_down = 1'b1;
    #50;
    up_down = 1'b0;
    #50;
    $finish;
end

initial
begin
    $monitor("Time=%0t | clear=%b | up_down=%b | q3=%b q2=%b q1=%b q0=%b",
             $time,clear,up_down,q3,q2,q1,q0);
end

endmodule