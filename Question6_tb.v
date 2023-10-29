`timescale 1ns/1ns
`include "Question6.v"

module Bin2Gray_tb;
    reg a,b,c,d;
    wire [3:0]gry;
    Bin2Gray uut (.a(a), .b(b), .c(c), .d(d), .gry(gry));
    initial
    begin
        $dumpfile("Question6.vcd");
        $dumpvars(0, Bin2Gray_tb);

        #5 {a,b,c,d} = 4'b0000;
        #5 {a,b,c,d} = 4'b0001;
        #5 {a,b,c,d} = 4'b1100;
        #5 {a,b,c,d} = 4'b0101;
        #5 {a,b,c,d} = 4'b1010;
        #5 {a,b,c,d} = 4'b0011;
        #5 {a,b,c,d} = 4'b1111;
    end

    initial 
    begin
        $monitor("t=%2d, a=%b, b=%b, c=%b, d=%b Gry = %4b", $time,a,b,c,d,gry);
        #50 $finish;    
    end
endmodule