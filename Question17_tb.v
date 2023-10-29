`include "Question17.v"
`timescale 1ns/1ns

module PriorityEnc_4bit_tb;
    
    reg [3:0] D;
    wire [1:0] Y;

    PriorityEnc_4bit uut(.D(D), .Y(Y));

    initial 
    begin
        $dumpfile("Question17.vcd");
        $dumpvars(0, PriorityEnc_4bit_tb);

        #2 D = 4'b0001;
        #2 D = 4'b0010;    
        #2 D = 4'b0011;
        #2 D = 4'b0100;
        #2 D = 4'b0101;
        #2 D = 4'b0110;
        #2 D = 4'b0111;
        #2 D = 4'b1000;
        #2 D = 4'b1001;
        #2 D = 4'b1010;
        #2 D = 4'b1011;
        #2 D = 4'b1100;
        #2 D = 4'b1101;
        #2 D = 4'b1110;
        #2 D = 4'b1111;
    end

    initial
    begin
        $monitor("t=%2d, D=%4b, Y=%2b", $time,D,Y);
        #35 $finish;
    end
endmodule