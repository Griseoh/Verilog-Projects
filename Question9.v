`timescale 1ns/1ns

module MUX16x1 (data, sel, y);
    input [15:0] data;
    input [3:0] sel;
    output y;
    wire w1, w2;
    
    MUX8x1 m1(data[7:0], sel[2:0], w1);
    MUX8x1 m2(data[15:8], sel[2:0], w2);
    MUX2x1 m3(w2,w1, sel[3], y);
endmodule

module MUX8x1 (dat, sett, out);
    input [7:0] dat;
    input [2:0] sett;
    output out;
    assign out = (dat[7] & sett[2] & sett[1] & sett[0])| 
    (dat[6] & sett[2] & sett[1] & !sett[0])|  
    (dat[5] & sett[2] & !sett[1] & sett[0])|  
    (dat[4] & sett[2] & !sett[1] & !sett[0])| 
    (dat[3] & !sett[2] & sett[1] & sett[0])| 
    (dat[2] & !sett[2] & sett[1] & !sett[0])| 
    (dat[1] & !sett[2] & !sett[1] & sett[0])| 
    (dat[0] & !sett[2] & !sett[1] & !sett[0]); 
endmodule

module MUX2x1 (a,b, selo, res);
    input a,b;
    input selo;
    output res;
    assign res = (a & selo) | (b & (!selo));
endmodule