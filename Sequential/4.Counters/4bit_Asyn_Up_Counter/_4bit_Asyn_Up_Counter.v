`timescale 1ns / 1ps
module _4bit_Asyn_Up_Counter(q0,q1,q2,q3,clk,clear);

output q0,q1,q2,q3;
input clk,clear;

wire qbar0,qbar1,qbar2,qbar3;

T_Flipflop FF0(
    .q(q0),
    .qbar(qbar0),
    .clk(clk),
    .t(1'b1),
    .clear(clear)
);

T_Flipflop FF1(
    .q(q1),
    .qbar(qbar1),
    .clk(qbar0),
    .t(1'b1),
    .clear(clear)
);

T_Flipflop FF2(
    .q(q2),
    .qbar(qbar2),
    .clk(qbar1),
    .t(1'b1),
    .clear(clear)
);

T_Flipflop FF3(
    .q(q3),
    .qbar(qbar3),
    .clk(qbar2),
    .t(1'b1),
    .clear(clear)
);

endmodule