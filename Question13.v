`timescale 1ns/1ns

module mux2x1_4bit (A,B,en,sel,y);

    input [3:0] A,B; 
    input en,sel;

    output [3:0] y;

    wire [3:0] wa,wb;
    wire inven, invsel;

    assign inven = ~(en);
    assign invsel = ~(sel);

    and
        a0(wa[0],A[0],inven,invsel),
        a1(wa[1],A[1],inven,invsel),
        a2(wa[2],A[2],inven,invsel),
        a3(wa[3],A[3],inven,invsel),
        a4(wb[0],B[0],inven,sel),
        a5(wb[1],B[1],inven,sel),
        a6(wb[2],B[2],inven,sel),
        a7(wb[3],B[3],inven,sel);
    
    or
        o0(y[0],wa[0],wb[0]),
        o1(y[1],wa[1],wb[1]),
        o2(y[2],wa[2],wb[2]),
        o3(y[3],wa[3],wb[3]);
    
endmodule