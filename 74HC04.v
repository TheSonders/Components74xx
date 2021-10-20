/////////////////////////////////////////
// 74HC04 - Hex inverter
//
// Antonio Sanchez (@TheSonders)
////////////////////////////////////////

module HC04(
    input wire p1,p3,p5,p9,p11,p13,
    output wire p2,p4,p6,p8,p10,p12
);

assign p2=~p1;
assign p4=~p3;
assign p6=~p5;
assign p8=~p9;
assign p10=~p11;
assign p12=~p13;

endmodule