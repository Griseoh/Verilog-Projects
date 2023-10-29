`include "Question5.v"
`include "HalfAdder.v"
`timescale 1ns/1ns

module BCDAdder (bcd1, bcd2, cin, bcdsum, cout);

    input [3:0] bcd1, bcd2;
    input cin;
    output [3:0] bcdsum;
    output cout;

    wire c0, c1, c2, c3;
    wire sc1, sc2;
    wire s0, s1, s2, s3;
    wire flg;

    FullAdder A0(bcd1[0], bcd2[0], cin, s0, c0);
    FullAdder A1(bcd1[1], bcd2[1], c0, s1, c1);
    FullAdder A2(bcd1[2], bcd2[2], c1, s2, c2);
    FullAdder A3(bcd1[3], bcd2[3], c2, s3, c3);

    assign flg = (c3)|(s3 & (s2 | s1));
    assign cout = flg;
    assign bcdsum[0] = s0;

    HalfAdder B1(s1, flg, bcdsum[1], sc1);
    FullAdder B2(s2, flg, sc1, bcdsum[2], sc2);
    HalfAdder B3(s3, sc2, bcdsum[3], sc3);

    
endmodule