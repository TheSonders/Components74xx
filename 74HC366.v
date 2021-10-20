/////////////////////////////////////////
// 74HC366 - Hex buffer/line driver; 3-state; inverting
//
// Antonio Sanchez (@TheSonders)
////////////////////////////////////////

module HC366(
	input wire p2,p4,p6,p10,p12,p14,
	input wire p1,p15,
	output wire p3,p5,p7,p9,p11,p13
);

assign {p3,p5,p7,p9,p11,p13}=(p1|p15)?6'bZZZZZZ:~{p2,p4,p6,p10,p12,p14};

endmodule