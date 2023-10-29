`timescale 1ns/1ns
`include "Question5.v"

module AdderSub4bit(A,B,M,Y,Ovrflw);

    input [3:0] A,B;
    input M;

    output [3:0] Y;
    output Ovrflw;

    wire [3:0]BorInvB;
    wire Cinterm0, Cinterm1, Cinterm2, Cinterm3;

    Complementer4bit C0(B,BorInvB,M);

    FullAdder F0(A[0], BorInvB[0], M, Y[0], Cinterm0);
    FullAdder F1(A[1], BorInvB[1], Cinterm0, Y[1], Cinterm1);
    FullAdder F2(A[2], BorInvB[2], Cinterm1, Y[2], Cinterm2);
    FullAdder F3(A[3], BorInvB[3], Cinterm2, Y[3], Cinterm3);

    xor xintnl(Ovrflw,   Cinterm3,  Cinterm2);
    
endmodule

module Complementer4bit (A,Y,Ctrl);
    
    input [3:0] A;
    input Ctrl;
    
    output [3:0] Y;

    xor
        xo0(Y[0], A[0], Ctrl),
        xo1(Y[1], A[1], Ctrl),  
        xo2(Y[2], A[2], Ctrl),
        xo3(Y[3], A[3], Ctrl);
    
endmodule