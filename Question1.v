`timescale 1ns/1ps
module specific_exor (f,s,t);
    input s,t;
    output f;
    wire a,b,c,d;
    not #4 (a,s);
    not #4 (b,t);
    and #8 (d,a,t);
    and #8 (c,b,s);
    or #10 (f,c,d);
endmodule