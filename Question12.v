`timescale 1ns/1ns
`include "Question11.v"
`include "Question7.v"

module BCDAddSub (bcd1, bcd2, cin,  bcdsum, cout);

    input [3:0] bcd1, bcd2;
    input cin;

    output [3:0] bcdsum;
    output cout;

    wire [3:0] comporbcd;

    BCDComplementer C1(bcd2, cin, comporbcd);
    BCDAdder A1(bcd1, comporbcd, cin, bcdsum, cout);
    
endmodule