`timescale 1ns/1ns
`include "Question7.v"

module BCDAdder_tb;
    reg [3:0] bcd1, bcd2;
    reg cin;
    wire [3:0] bcdsum;
    wire cout;

    BCDAdder uut(.bcd1(bcd1), .bcd2(bcd2), .cin(cin), .bcdsum(bcdsum), .cout(cout));
    initial 
    begin
        $dumpfile("Question7.vcd");
        $dumpvars(0, BCDAdder_tb);

        #5 bcd1 = 4'b0001; bcd2 = 4'b0011; cin = 1'b0;
        #5 bcd1 = 4'b0101; bcd2 = 4'b1001; cin = 1'b0;
        #5 bcd1 = 4'b0101; bcd2 = 4'b0001; cin = 1'b1;   
        #5 bcd1 = 4'b0110; bcd2 = 4'b0111; cin = 1'b0;
        #5 bcd1 = 4'b1001; bcd2 = 4'b0110; cin = 1'b1;
        #5 bcd1 = 4'b0001; bcd2 = 4'b1000; cin = 1'b0;
    end

    initial
    begin
        $monitor("t=%2d, bcd1=%4b, bcd2=%4b, cin=%1b, sum=%4b, cout=%1b", $time, bcd1, bcd2, cin, bcdsum, cout);
        #50 $finish;
    end
endmodule