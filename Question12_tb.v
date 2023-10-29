`include "Question12.v"
`timescale 1ns/1ns

module BCDAddSub_tb;
    reg [3:0] bcd1, bcd2;
    reg cin;
    wire [3:0] bcdsum;
    wire cout;

    BCDAddSub uut(.bcd1(bcd1), .bcd2(bcd2), .cin(cin), .bcdsum(bcdsum), .cout(cout));

    initial 
    begin
        $dumpfile("Question12.vcd");
        $dumpvars(0, BCDAddSub_tb);

        #2 bcd1 = 4'b1000; bcd2 = 4'b0101;
        #2 cin = 1'b0;
        #2 cin = 1'b1;    

        #2 bcd1 = 4'b1001; bcd2 = 4'b0110;
        #2 cin = 1'b0;
        #2 cin = 1'b1;
    end

    initial
    begin
        $monitor("t=%2d, bcd1=%4b, bcd2=%4b, cin=%1b, result=%4b, cout=%1b", $time, bcd1, bcd2, cin, bcdsum, cout);
        #20 $finish;
    end
endmodule