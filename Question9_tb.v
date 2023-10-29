`include "Question9.v"
`timescale 1ns/1ns

module MUX16x1_tb;

    reg [15:0] data;
    reg [3:0] sel;
    wire y;

    MUX16x1 uut(.data(data), .sel(sel), .y(y));

    initial
    begin
        $dumpfile("Question9.vcd");
        $dumpvars(0, MUX16x1_tb);

        #2 data = 16'h2b8d;
        #2 sel = 4'b0000;
        #2 sel = 4'b0001;
        #2 sel = 4'b0010;
        #2 sel = 4'b0011;
        #2 sel = 4'b0100;
        #2 sel = 4'b0101;
        #2 sel = 4'b0110;
        #2 sel = 4'b0111;
        #2 sel = 4'b1000;
        #2 sel = 4'b1001;
        #2 sel = 4'b1010;
        #2 sel = 4'b1011;
        #2 sel = 4'b1100;
        #2 sel = 4'b1101;
        #2 sel = 4'b1110;
        #2 sel = 4'b1111;

    end

    initial
    begin
        $monitor("t=%2d, data=%16b, sel=%3b, out=%1b", $time, data, sel, y);
        #40 $finish;
    end
endmodule