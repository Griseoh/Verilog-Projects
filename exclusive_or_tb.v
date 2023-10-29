`include "exclusive_or.v"
module exclusive_or_tb;

reg a,b;
wire f;
exclusive_or uut(f,a,b);
initial begin
    $dumpfile("exclusive_or.vcd");
    $dumpvars(0, exclusive_or_tb);

    a = 0;
    b = 0;
    #10;

    a = 0;
    b = 1;
    #10;

    a = 1;
    b = 0;
    #10;

    a = 1;
    b = 1;
    #10;
    $display("test complete");
end

endmodule
