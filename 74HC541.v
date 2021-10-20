/////////////////////////////////////////
// 74HC541 - Octal buffer/line driver; 3-state
//
// Antonio Sanchez (@TheSonders)
////////////////////////////////////////

module HC541(
    input wire p2,p3,p4,p5,p6,p7,p8,p9,
	input wire p1,p19,
	output wire p18,p17,p16,p15,p14,p13,p12,p11
);

assign {p18,p17,p16,p15,p14,p13,p12,p11}= (p1|p19)?8'bZZZZZZZZ:{p2,p3,p4,p5,p6,p7,p8,p9};

endmodule