`timescale 1ns/1ns
module PriorityEncoder (a,b,c,d,p,q,r);
    input a,b,c,d;
    output p,q,r;
    assign p = a|b;
    assign q = a|(c&(!(b)));
    assign r = a|b|c|d;
endmodule