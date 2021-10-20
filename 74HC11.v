/////////////////////////////////////////
// 74HC11 - Triple 3-input AND gate
//
// Antonio Sanchez (@TheSonders)
////////////////////////////////////////

module HC11(
    input wire p1,p2,p13,
    input wire p3,p4,p5,
    input wire p9,p10,p11,
    output wire p12,p6,p8
);

assign p12=p1 & p2 & p13;
assign p6=p3 & p4 & p5;
assign p8=p9 & p10 & p11;

endmodule