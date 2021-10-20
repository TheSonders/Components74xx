/////////////////////////////////////////
// 74HC245 - Octal bus transceiver; 3-state
//
// Antonio Sanchez (@TheSonders)
////////////////////////////////////////

module HC245(
    inout wire p2,p3,p4,p5,p6,p7,p8,p9,
	inout wire p18,p17,p16,p15,p14,p13,p12,p11,
	input wire p1,p19
);

assign {p2,p3,p4,p5,p6,p7,p8,p9} = (~p1 && ~p19)?{p18,p17,p16,p15,p14,p13,p12,p11}:8'bZZZZZZZZ;
assign {p18,p17,p16,p15,p14,p13,p12,p11} = (p1 && ~p19)?{p2,p3,p4,p5,p6,p7,p8,p9}:8'bZZZZZZZZ;


endmodule