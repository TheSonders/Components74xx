/////////////////////////////////////////
// 74HC4040 - 12-stage binary ripple counter
// Negative clock trigger positive async clear
//
// Antonio Sanchez (@TheSonders)
////////////////////////////////////////

module HC4040(
	input wire p10,p11,
	output wire p9,p7,p6,p5,p3,p2,p4,p13,p12,p14,p15,p1
);

reg [11:0] d=0;

assign {p1,p15,p14,p12,p13,p4,p2,p3,p5,p6,p7,p9}= d;

always @(negedge p10 or posedge p11) begin
	if (p11) d<=12'h000;
	else d<=d+12'h001;
end

endmodule