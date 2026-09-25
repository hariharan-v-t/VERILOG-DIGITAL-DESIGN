`timescale 1ns / 1ps
module SR_Latch_tb;
reg s;
reg r;
wire q;
wire qbar;
SR_Latch_NAND uut(
.s(s),
.r(r),
.q(q),
.qbar(qbar)
);
initial begin 
s=1'b0;
r=1'b0;
#10;
s=1'b0;
r=1'b1;
#10;
s=1'b1;
r=1'b0;
#10;
s=1'b1;
r=1'b1;
#10;
$finish;
end
initial begin
$monitor ("Time = %0t | s=%b r=%b | q=%b qbar=%b",
$time, s, r, q, qbar);
end 

endmodule
