`timescale 1ns/1ns
`include "SimpleAnd.v"
module SimpleAnd_tb;

reg a,b;
wire f;
simpleand uut(f,a,b);
initial begin
    $dumpfile("SimpleAnd.vcd");
    $dumpvars(0, SimpleAnd_tb);

    a = 0;
    b = 0;
    #20;
    a = 1;
    b = 0;
    #20;
    a = 1;
    b = 1;
    #20;
    a = 0;
    b = 1;
    #20;
    $display("test completed");
end

endmodule