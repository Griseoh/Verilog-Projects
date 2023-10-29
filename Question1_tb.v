`timescale 1ns/1ps
`include "Question1.v"

module specific_exor_tb;
    reg i,j;
    wire k;
    specific_exor uut(.f(k), .s(i), .t(j));
    initial 
        begin
            $dumpfile("Question1.vcd");
            $dumpvars(0,specific_exor_tb);

            i=1'b0;
            j=1'b0;

            #10
            i=1'b0;
            j=1'b1;
        end
    initial 
        begin
        $monitor("time =%2d, i=%b, j=%b, k=%b",$time,i,j,k);
        #50
        $display("Testing Done");
        $finish;
        end
endmodule