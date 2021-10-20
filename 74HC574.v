/////////////////////////////////////////
// 74HC574 - Octal D-type flip-flop; positive edge-trigger; 3-state
//
// Antonio Sanchez (@TheSonders)
////////////////////////////////////////

module HC574(
    input wire p2,p3,p4,p5,p6,p7,p8,p9,
	input wire p1,p11,
	output wire p19,p18,p17,p16,p15,p14,p13,p12
);

reg [7:0] d;

assign {p12,p13,p14,p15,p16,p17,p18,p19}= (p1)?8'bZZZZZZZZ:d;

always @(posedge p11) d<={p9,p8,p7,p6,p5,p4,p3,p2};

endmodule