`timescale 1ns/1ns

module Bin2Gray (a,b,c,d,gry);
    
    input a,b,c,d;
    output reg [3:0]gry;

    always @ (a,b,c,d)
    begin
        
        gry[3] = a;
        gry[2] = a^b;
        gry[1] = b^c;
        gry[0] = c^d;

    end

endmodule