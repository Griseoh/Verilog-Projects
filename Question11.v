`timescale 1ns/1ns

module BCDComplementer (bcd, cs, bcdcomp);
    input [3:0] bcd;
    input cs;
    output reg [3:0] bcdcomp;

    always @ (bcd, cs) 

    if (cs == 1'b1)
    begin
        bcdcomp[3] = ((~ bcd[3] ) & (~ bcd[2]) & (~ bcd[1]));
        bcdcomp[2] = ((bcd[2]) ^ (bcd[1]));
        bcdcomp[1] = (bcd[1]);
        bcdcomp[0] = (~ bcd[0]);
    end

    else if (cs == 1'b0)

    begin
        bcdcomp = bcd;
    end
endmodule