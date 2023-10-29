`timescale 1ns/1ns
module BCDtoSevenSeg (A,B,C,D,svnsg);

   input A,B,C,D;
   output reg [6:0]svnsg;
   always @ (A,B,C,D)
    begin
        case ({A,B,C,D})

            4'b0000: svnsg = 7'b1111110;
            4'b0001: svnsg = 7'b0110000; 
            4'b0010: svnsg = 7'b1101101;
            4'b0011: svnsg = 7'b1111001; 
            4'b0100: svnsg = 7'b0110011;
            4'b0101: svnsg = 7'b1011011;
            4'b0110: svnsg = 7'b1011111;
            4'b0111: svnsg = 7'b1110000;
            4'b1000: svnsg = 7'b1111111;
            4'b1001: svnsg = 7'b1110011;
            4'b1010: svnsg = 7'b0000000;
            4'b1011: svnsg = 7'b0000000;
            4'b1100: svnsg = 7'b0000000;
            4'b1101: svnsg = 7'b0000000;
            4'b1110: svnsg = 7'b0000000;
            4'b1111: svnsg = 7'b0000000;
     
        endcase
    end      
endmodule