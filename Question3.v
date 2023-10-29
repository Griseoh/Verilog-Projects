primitive MajorityLogicPrimitive (y,a,b,c,d);
    output y;
    input a,b,c,d;
    //Truth Table for UDP
    table
    // a b c d : y
       0 0 0 0 : 0;
       0 0 0 1 : 0;
       0 0 1 0 : 0;
       0 0 1 1 : 0;
       0 1 0 0 : 0;
       0 1 0 1 : 0;
       0 1 1 0 : 0;
       0 1 1 1 : 1;
       1 0 0 0 : 0;
       1 0 0 1 : 0;
       1 0 1 0 : 0;
       1 0 1 1 : 1;
       1 1 0 0 : 0;
       1 1 0 1 : 1;
       1 1 1 0 : 1;
       1 1 1 1 : 1;
    endtable
endprimitive


