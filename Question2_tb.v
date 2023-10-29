`include "Question2.v"
`timescale 1ns/1ns

module LogicDesign_tb;
    reg a,b,c,d;
    wire y;

    LogicDesign uut(.y(y), .a(a), .b(b), .c(c), .d(d));
    initial 
    begin
        $dumpfile("Question2.vcd");
        $dumpvars(0,LogicDesign_tb);
        #8 
        a=0;
        b=0;
        c=0;
        d=1;

        #8 
        a=0;
        b=0;
        c=1;
        d=0; 

        #8 
        a=0;
        b=0;
        c=1;
        d=1; 

        #8 
        a=0;
        b=1;
        c=0;
        d=0; 

        #8 
        a=0;
        b=1;
        c=0;
        d=1;     
    end
    initial 
    begin
        $monitor("t=%2d, a=%b, , b=%b c=%b, d=%b, y=%b", $time,a,b,c,d,y);
        #100
        $display("Testing Finish");
        $finish;
    end
endmodule