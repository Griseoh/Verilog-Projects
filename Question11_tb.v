`include "Question11.v"
`timescale 1ns/1ns

module BCDComplementer_tb;

    reg [3:0] bcd;
    reg cs;
    wire [3:0] bcdcomp;

    BCDComplementer uut(.bcd(bcd), .bcdcomp(bcdcomp), .cs(cs));

    initial
    begin
        $dumpfile("Question11.vcd");
        $dumpvars(0, BCDComplementer_tb);

        #2 bcd = 4'b0000;
        #1 cs = 1'b0;
        #1 cs = 1'b1;

        #2 bcd = 4'b0001;
        #1 cs = 1'b0;
        #1 cs = 1'b1;

        #2 bcd = 4'b0010;
        #1 cs = 1'b0;
        #1 cs = 1'b1;

        #2 bcd = 4'b0011;
        #1 cs = 1'b0;
        #1 cs = 1'b1;

        #2 bcd = 4'b0100;
        #1 cs = 1'b0;
        #1 cs = 1'b1;

        #2 bcd = 4'b0101;
        #1 cs = 1'b0;
        #1 cs = 1'b1;

        #2 bcd = 4'b0110;
        #1 cs = 1'b0;
        #1 cs = 1'b1;

        #2 bcd = 4'b0111;
        #1 cs = 1'b0;
        #1 cs = 1'b1;

        #2 bcd = 4'b1000;
        #1 cs = 1'b0;
        #1 cs = 1'b1;

        #2 bcd = 4'b1001;
        #1 cs = 1'b0;
        #1 cs = 1'b1;

    end

    initial
    begin

        $monitor("t=%2d, bcd=%4b, control =%1b comp=%4b", $time, bcd, cs, bcdcomp);
        #45 $finish;
    end
endmodule