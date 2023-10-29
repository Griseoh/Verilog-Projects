`timescale 10ns/10ns
module exclusive_or(f,a,b);
input a,b;
output f;
wire t1, t2, t3;
nand #5 g1(t1, a, b);
and #5 g2(t2, a, t1);
and #5 g3(t3, b, t1);
nor #5 g4(f, t2, t3);
endmodule