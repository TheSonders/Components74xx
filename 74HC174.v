/////////////////////////////////////////
// 74HC174 - Hex D-type flip-flop with reset; positive-edge trigger
//
// Antonio Sanchez (@TheSonders)
////////////////////////////////////////

module HC174(
    input wire p3,p4,p6,p11,p13,p14,
	input wire p9,p1,
	output wire p2,p5,p7,p10,p12,p15
);

reg [5:0] d=6'h00;
assign {p15,p12,p10,p7,p5,p2}=d;

always @(posedge p9 or negedge p1)begin
    if (~p1) d<=6'h00;
    else d<={p14,p13,p11,p6,p4,p3};
end

endmodule