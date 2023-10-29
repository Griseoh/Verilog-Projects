`include "Question4.v"
`timescale 1ns/1ns

module BCDtoSevenSeg_tb;

    reg [3:0]bcd; wire [6:0]svn;

    BCDtoSevenSeg uut(.A(bcd[3]),.B(bcd[2]),.C(bcd[1]),.D(bcd[0]),.svnsg(svn));

    initial 
    begin
        $dumpfile("Question4.vcd");
        $dumpvars(0, BCDtoSevenSeg_tb);

        #5 bcd = 4'b0000;
        #5 bcd = 4'b0001;
        #5 bcd = 4'b0010;    
        #5 bcd = 4'b0011;
        #5 bcd = 4'b0100;
        #5 bcd = 4'b0101;
        #5 bcd = 4'b0110;
        #5 bcd = 4'b0111;
        #5 bcd = 4'b1000;
        #5 bcd = 4'b1001;
        #5 bcd = 4'b1010;
        #5 bcd = 4'b1011;
    end

    initial 
    begin
        $monitor("t = %2d, decBCD = %2d, segarray = %7b", $time, bcd, svn);
        #100 $finish;    
    end
endmodule