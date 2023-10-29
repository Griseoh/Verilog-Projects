`include "mux16to1struct.v"
`include "mux4to1.v"
module muxteststruct;

reg [15:0]A; reg [3:0]B; wire F;

mux16to1struct uut(.in(A), .sel(B), .out(F));

initial begin

    $dumpfile("mux16to1struct.vcd");
    $dumpvars(0, muxteststruct);

    $monitor($time, "A = %h, B = %h, F =%b", A, B, F);

    #5 A = 16'h3f0a; B = 4'h0;
    #5 B = 4'h1;
    #5 B = 4'h6;
    #5 B = 4'hc;
    #5 $finish;

end
endmodule