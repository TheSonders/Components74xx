/////////////////////////////////////////
// 74HC86 - Quad 2-input EXCLUSIVE-OR gate
//
// Antonio Sanchez (@TheSonders)
////////////////////////////////////////

module HC86(
    input wire p1,p2,
    input wire p4,p5,
    input wire p9,p10,
    input wire p12,p13,
    output wire p3,p6,p8,p11
);

assign p3=p1 ^ p2;
assign p6=p4 ^ p5;
assign p8=p9 ^ p10;
assign p11=p12 ^ p13;

endmodule