`include "Question10.v"
`timescale 1ns/1ns

module minALU_tb;

    reg [7:0] A,B;
    reg [2:0] sel;
    wire [7:0] y;

    miniALU uut(.A(A), .B(B), .sel(sel), .y(y));
    
    initial 
    begin
        $dumpfile("Question10.vcd");
        $dumpvars(0, minALU_tb);

        #0 sel = 3'b000;
        #2 A = 8'hf8; B = 8'ha5;
        #3 sel = 3'b001;
        #3 sel = 3'b010;
        #3 sel = 3'b011;
        #3 sel = 3'b100;
        #3 sel = 3'b101;
        #3 sel = 3'b110;
        #3 sel = 3'b111;
    end

    initial
    begin
        $monitor("t=%2d, A=%8b, B=%8b, sel=%3b, out=%8b", $time, A, B, sel, y);
        #25 $finish;
    end

endmodule