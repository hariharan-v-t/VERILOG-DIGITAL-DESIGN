`timescale 1ns / 1ps
module Full_Adder_tb;
reg a; 
reg b;
reg cin;
wire s;
wire cout;
Full_Adder uut(
.s(s),
.cout(cout),
.a(a),
.b(b),
.cin(cin)
);
initial begin

    a = 0; b = 0; cin = 0;
    #10;

    a = 0; b = 0; cin = 1;
    #10;

    a = 0; b = 1; cin = 0;
    #10;

    a = 0; b = 1; cin = 1;
    #10;

    a = 1; b = 0; cin = 0;
    #10;

    a = 1; b = 0; cin = 1;
    #10;

    a = 1; b = 1; cin = 0;
    #10;

    a = 1; b = 1; cin = 1;
    #10;
    $finish;
    end

endmodule
