`include "Question15.v"
`timescale 1ns/1ns

module Comparator_2bit_tb;

    reg [1:0] A,B;
    wire [5:0] Y;

    Comparator_2bit uut (.A(A), .B(B), .Y(Y));

    initial 
    begin
        $dumpfile("Question15.v");
        $dumpvars(0, Comparator_2bit_tb);

        #5 A = 2'b00; B = 2'b00;
        #5 A = 2'b00; B = 2'b01;    
        #5 A = 2'b00; B = 2'b10;
        #5 A = 2'b00; B = 2'b11;
        #5 A = 2'b01; B = 2'b00;
        #5 A = 2'b01; B = 2'b01;
        #5 A = 2'b01; B = 2'b10;
        #5 A = 2'b01; B = 2'b11;
        #5 A = 2'b10; B = 2'b00;
        #5 A = 2'b10; B = 2'b01;
        #5 A = 2'b10; B = 2'b10;
        #5 A = 2'b10; B = 2'b11;
        #5 A = 2'b11; B = 2'b00;
        #5 A = 2'b11; B = 2'b01;
        #5 A = 2'b11; B = 2'b10;
        #5 A = 2'b11; B = 2'b11;
    end

    initial
    begin
        $monitor("t=%2d, A=%2b, B=%2b, Y=%6b", $time, A, B, Y);
        #90 $finish;
    end
endmodule