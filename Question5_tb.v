`include "Question5.v"
`timescale 1ns/1ns

module FullAdder_tb;
    reg a,b,cin;
    wire s,cout;

    FullAdder uut(.a(a), .b(b), .cin(cin), .s(s), .cout(cout));

    initial
    begin
        $dumpfile("Question5.vcd");
        $dumpvars(0, FullAdder_tb);

        #5 {a,b,cin} = 3'b001;
        #5 {a,b,cin} = 3'b010;
        #5 {a,b,cin} = 3'b011;
        #5 {a,b,cin} = 3'b100;
        #5 {a,b,cin} = 3'b101;
        #5 {a,b,cin} = 3'b110;
        #5 {a,b,cin} = 3'b111;
        #5 {a,b,cin} = 3'b000;

    end

    initial
    begin
        $monitor("t= %2d, a= %b, b=%b, cin=%b , s=%b, cout=%b", $time, a,b,cin,s,cout);
        #50 $finish;
    end
endmodule