`include "Question14.v"
`timescale 1ns/1ns

module DigiLogic_tb;
    
    reg a,b,c,d;
    wire out1,out2;

    DigiLogic uut (.a(a), .b(b), .c(c), .d(d), .out1(out1), .out2(out2));

    initial
    begin
        $dumpfile("Question14.vcd");
        $dumpvars(0, DigiLogic_tb);

        #2 {a,b,c,d} = 4'b0000;
        #2 {a,b,c,d} = 4'b0001;
        #2 {a,b,c,d} = 4'b0010;
        #2 {a,b,c,d} = 4'b0011;
        #2 {a,b,c,d} = 4'b0100;
        #2 {a,b,c,d} = 4'b0101;
        #2 {a,b,c,d} = 4'b0110;
        #2 {a,b,c,d} = 4'b0111;
        #2 {a,b,c,d} = 4'b1000;
        #2 {a,b,c,d} = 4'b1001;       
        #2 {a,b,c,d} = 4'b1010;
        #2 {a,b,c,d} = 4'b1011;
        #2 {a,b,c,d} = 4'b1100;
        #2 {a,b,c,d} = 4'b1101;
        #2 {a,b,c,d} = 4'b1110;
        #2 {a,b,c,d} = 4'b1111;
    end

    initial 
    begin
        $monitor("t=%2d, a=%1b, b=%1b, c=%1b, d=%1b, out1=%1b, out2=%1b", $time,a,b,c,d,out1,out2);
        #35 $finish;    
    end
endmodule