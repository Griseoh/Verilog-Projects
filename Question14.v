`timescale 1ns/1ns

module DigiLogic (a,b,c,d,out1,out2);

    input a,b,c,d;
    output out1, out2;

    wire w1, w2, w3, w4, w5, w6, w7;

    not
        n0(w1,a),
        n1(w2,b),
        n3(out2,w3);
    and
        a0(w4,c,w2),
        a1(w5,b,w1);
    or
        o0(w6,a,w4),
        o1(w3,d,w5),
        o2(out1,w6,w7);
    xor
        xo0(w7,w5,d);
            
endmodule