`timescale 1ns/1ns

module miniALU (A,B, sel, y);
    input [7:0] A,B;
    input [2:0] sel;
    output reg [7:0] y;

    always @ (A, B, sel) 
    begin
        case (sel)
            3'b000: y <= 8'h00;
            3'b001: y <= A & B;
            3'b010: y <= A | B;
            3'b011: y <= A + B;
            3'b100: y <= A - B;
            3'b101: y <= A ^ B;
            3'b110: y <= ~ A; 
            3'b111: y <= 8'hff;
            default:y <= 8'h00; 
        endcase

    end
endmodule