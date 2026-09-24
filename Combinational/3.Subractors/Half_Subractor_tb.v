`timescale 1ns / 1ps
module Half_Subractor_tb;
reg a;
reg b;
wire d;
wire bw;
Half_Subractor uut(
.a(a),
.b(b),
.d(d),
.bw(bw)
);
initial begin

    a = 1'b0;
    b = 1'b0;
    #10;

    a = 1'b0;
    b = 1'b1;
    #10;

    a = 1'b1;
    b = 1'b0;
    #10;

    a = 1'b1;
    b = 1'b1;
    #10;

    $finish;

end

endmodule
