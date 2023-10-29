`include "Question3.v"
`timescale 1ns/1ns

module MajorityLogicPrimitive_tb;
    reg a,b,c,d;
    wire y;

    MajorityLogicPrimitive uut(.y(y),.a(a),.b(b),.c(c),.d(d));

    initial 
    begin
        $dumpfile("Question3.vcd");
        $dumpvars(0,MajorityLogicPrimitive_tb);

        #5 a=0; b=0; c=0; d=1; #5  a=0; b=0; c=1; d=0; #5  a=0; b=0; c=1; d=1; #5  a=0; b=1; c=0; d=0;  
        #5 a=0; b=1; c=0; d=1; #5  a=0; b=1; c=1; d=0; #5  a=0; b=1; c=1; d=1; #5  a=1; b=0; c=0; d=0; 
        #5 a=1; b=0; c=0; d=1; #5  a=1; b=0; c=1; d=0; #5  a=1; b=0; c=1; d=1; #5  a=1; b=1; c=0; d=0; 
        #5 a=1; b=1; c=0; d=1; #5  a=1; b=1; c=1; d=0; #5  a=1; b=1; c=1; d=1; #5  a=0; b=0; c=0; d=0;

    end
    initial 
    begin
        $monitor("t=%2d, a=%b, b=%b, c=%b, d=%b, y=%b", $time,a,b,c,d,y);
        #90
        $display("Testing Finished");
        $finish;    
    end
    
endmodule