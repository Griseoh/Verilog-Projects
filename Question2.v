`timescale 1ns/1ns
 module LogicDesign (y,a,b,c,d );
    input a,b,c,d;
    output y;
    wire w1, w2;

    xor #1 (w1,a,c);
    or #1 (w2,d,w1);
    and #1 (y,b,w2);

 endmodule