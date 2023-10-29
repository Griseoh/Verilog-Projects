`include "Question13.v"
`timescale 1ns/1ns

module mux2x1_4bit_tb;

    reg [3:0]A,B;
    reg en,sel;
    wire [3:0] y;

    mux2x1_4bit uut(.A(A), .B(B), .en(en), .sel(sel), .y(y));

    initial 
    begin
        $dumpfile("Question13.vcd");
        $dumpvars(0, mux2x1_4bit_tb);

        #2 A = 4'b1010; B = 4'b1101;
        #2 en = 1'b1; sel = 1'b0;
        #2 en = 1'b0; sel = 1'b0;
        #2 sel =1'b1;    
    end

    initial
    begin
        $monitor("t=%2d, A=%4b, B=%4b, enablelow=%1b, select=%1b, y=%4b",$time, A,B,en,sel,y);
        #12 $finish;
    end
endmodule
