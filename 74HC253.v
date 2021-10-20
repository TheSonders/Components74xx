/////////////////////////////////////////
// 74HC253 - Dual 4-input multiplexer; 3-state
//
// Antonio Sanchez (@TheSonders)
////////////////////////////////////////

module HC253(
    input wire p6,p5,p4,p3,
	input wire p10,p11,p12,p13,
	input wire p14,p2,
	input wire p1,p15,
	output wire p7,p9
);
`define sel {p2,p14}
assign p7= (p1)?1'bZ:(`sel==2'b00)?p6:(`sel==2'b01)?p5:(`sel==2'b10)?p4:p3;
assign p9=(p15)?1'bZ:(`sel==2'b00)?p10:(`sel==2'b01)?p11:(`sel==2'b10)?p12:p13;

endmodule