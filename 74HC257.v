/////////////////////////////////////////
// 74HC257 - Quad 2-input multiplexer; 3-state
//
// Antonio Sanchez (@TheSonders)
////////////////////////////////////////

module HC257(
    input wire p2,p3,
	input wire p5,p6,
	input wire p11,p10,
	input wire p14,p13,
	input wire p1,p15,
	output wire p4,p7,p9,p12
);

assign p4=(p15)?1'bZ:(p1)?p3:p2;
assign p7=(p15)?1'bZ:(p1)?p6:p5;
assign p9=(p15)?1'bZ:(p1)?p10:p11;
assign p12=(p15)?1'bZ:(p1)?p13:p14;

endmodule