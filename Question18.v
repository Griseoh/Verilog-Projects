`timescale 1ns/1ns

module OctaltoBin (Oct, Bin, Valid);

    input [7:0] Oct;
    output reg [2:0] Bin;
    output Valid;

    assign Valid = |(Oct);
    
    always @(Oct) 
    if (|(Oct) == 0) Bin = 3'bxxx;
    else if(Oct[7] == 1) Bin = 3'b111;
    else if(Oct[6] == 1) Bin = 3'b110;    
    else if(Oct[5] == 1) Bin = 3'b101;
    else if(Oct[4] == 1) Bin = 3'b100;
    else if(Oct[3] == 1) Bin = 3'b011;
    else if(Oct[2] == 1) Bin = 3'b010;
    else if(Oct[1] == 1) Bin = 3'b001;
    else Bin = 3'b000;
    

endmodule