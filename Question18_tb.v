`include "Question18.v"
`timescale 1ns/1ns

module OctaltoBin_tb;

    reg [7:0] Oct;
    wire Valid;
    wire [2:0] Bin;

    OctaltoBin uut(.Oct(Oct), .Valid(Valid), .Bin(Bin));

    initial 
    begin
        $dumpfile("Question18.vcd");
        $dumpvars(0, OctaltoBin_tb);

        #2 Oct = 8'b00000000;
        #2 Oct = 8'b00000001;    
        #2 Oct = 8'b00000010;
        #2 Oct = 8'b00000011;
        #2 Oct = 8'b00000100;
        #2 Oct = 8'b00000101;
        #2 Oct = 8'b00000110;
        #2 Oct = 8'b00000111;
        #2 Oct = 8'b00001000;
        #2 Oct = 8'b00001001;
        #2 Oct = 8'b00001010;
        #2 Oct = 8'b00001011;
        #2 Oct = 8'b00001100;
        #2 Oct = 8'b00001101;
        #2 Oct = 8'b00001110;
        #2 Oct = 8'b00001111;
        #2 Oct = 8'b00010000;
        #2 Oct = 8'b00010001;
        #2 Oct = 8'b00010010;
        #2 Oct = 8'b00010011;
        #2 Oct = 8'b00010100;
        #2 Oct = 8'b00010101;
        #2 Oct = 8'b00010110;
        #2 Oct = 8'b00010111;
        #2 Oct = 8'b00011000;
        #2 Oct = 8'b00011001;
        #2 Oct = 8'b00011010;
        #2 Oct = 8'b00011011;
        #2 Oct = 8'b00011100;
        #2 Oct = 8'b00011101;
        #2 Oct = 8'b00011110;
        #2 Oct = 8'b00011111;
        #2 Oct = 8'b00100000;
        #2 Oct = 8'b00100001;
        #2 Oct = 8'b00100010;
        #2 Oct = 8'b00100011;
        #2 Oct = 8'b00100100;
    end

    initial
    begin
        $monitor("t=%2d, Oct=%8b, Bin=%3b, Valid=%1b", $time, Oct, Bin, Valid);
        #100 $finish;
    end
endmodule