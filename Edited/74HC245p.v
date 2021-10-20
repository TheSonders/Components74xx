/////////////////////////////////////////
// 74HC245 - Octal bus transceiver; 3-state
// Modified version with p1 tied to VCC, port A as input
// Antonio Sanchez (@TheSonders)
////////////////////////////////////////

module HC245p(
    input wire p2,p3,p4,p5,p6,p7,p8,p9,
	output wire p18,p17,p16,p15,p14,p13,p12,p11,
	input wire p1,p19
);

assign {p18,p17,p16,p15,p14,p13,p12,p11} = (p1 && ~p19)?{p2,p3,p4,p5,p6,p7,p8,p9}:8'bZZZZZZZZ;

endmodule