`timescale 1ns/1ns

module BitAnd (A,Y);

    input [2:0] A;
    output Y;

    assign Y = (A[2]) & (A[1]) & (A[0]);
    
endmodule