`timescale 1ns/1ns
`include "Question19.v"

module AdderSub4bit_tb;

    reg [3:0] A,B;
    reg M;

    wire [3:0] Y;
    wire Ovrflw;

    AdderSub4bit uut(.A(A), .B(B), .M(M), .Y(Y), .Ovrflw(Ovrflw));

    initial 
    begin
        $dumpfile("Question19.vcd");
        $dumpvars(0, AdderSub4bit_tb);

        #2 A = 4'b1001; B = 4'b0110;
        #2 M = 1'b0;
        #2 M = 1'b1;

    end

    initial
    begin
        $monitor("t=%2d, A=%4b, B=%4b, M=%1b, Y=%4b, Ovrflw=%1b",$time,A,B,M,Y,Ovrflw);
        #10 $finish;
    end
endmodule