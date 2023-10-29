`include "Question8.v"
`timescale 1ns/1ns

module PriorityEncoder_tb;
    
    reg a,b,c,d;
    wire p,q,r;

    PriorityEncoder uut(.a(a), .b(b), .c(c), .d(d), .p(p), .q(q), .r(r));
    initial
    begin
        $dumpfile("Question8.vcd");
        $dumpvars(0, PriorityEncoder_tb);

        #2 {a,b,c,d} = 4'b0100;
        #2 {a,b,c,d} = 4'b0110;
        #2 {a,b,c,d} = 4'b0101;
        #2 {a,b,c,d} = 4'b0010;
        #2 {a,b,c,d} = 4'b0011;
        #2 {a,b,c,d} = 4'b0000;
        #2 {a,b,c,d} = 4'b1000;
        #2 {a,b,c,d} = 4'b1100;
        #2 {a,b,c,d} = 4'b1110;

    end

    initial
    begin
        $monitor("t=%2d, a=%1b, b=%1b, c=%1b, d=%1b, p=%1b, q=%1b, r=%1b", $time,a,b,c,d,p,q,r);
        #25 $finish;
    end

endmodule