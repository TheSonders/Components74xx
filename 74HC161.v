/////////////////////////////////////////
// 74HC161 - Presettable synchronous 4-bit binary counter; asynchronous reset
//
// Antonio Sanchez (@TheSonders)
////////////////////////////////////////

module HC161(
    input wire p3,p4,p5,p6,
	input wire p9,p10,p7,p2,p1,
    output wire p14,p13,p12,p11,
	output wire p15
);

reg [3:0] d=0;

assign p15=((d==4'hF)&(p10));
assign {p11,p12,p13,p14}=d;

always @(posedge p2 or negedge p1) begin
	if (~p1) d<=4'b0000;
	else begin
		if (~p9) d<={p6,p5,p4,p3};
		else begin
			if (p7 & p10) d<=d+4'b0001;
		end
	end
end

endmodule