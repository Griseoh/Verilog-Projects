`timescale 1ns/1ns

module PriorityEnc_4bit (D,Y);
    
    input [3:0] D;
    output reg [1:0] Y;

    always @ (D)
    if (D[3] == 1) Y <= 2'b11;
    else if (D[3]== 0 && D[2]== 1) Y <= 2'b10;
    else if (D[3]== 0 && D[2]== 0 && D[1]== 1) Y <= 2'b01;
    else Y <= 2'b00;
     
endmodule