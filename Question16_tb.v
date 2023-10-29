`timescale 1ns/1ns
`include "Question16.v"

module BitAnd_tb;

    reg [2:0] A;
    wire Y;

    BitAnd uut (.A(A), .Y(Y));

    initial 
    begin
        $dumpfile("Question16.vcd");
        $dumpvars(0, BitAnd_tb);

        #2 A = 3'b000;
        #2 A = 3'b001;    
        #2 A = 3'b010;
        #2 A = 3'b011;
        #2 A = 3'b100;
        #2 A = 3'b101;
        #2 A = 3'b110;
        #2 A = 3'b111;

    end

    initial
    begin
        $monitor("t=%2d, A=%3b, Y=%1B", $time, A, Y);
        #20 $finish;
    end
endmodule