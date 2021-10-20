/////////////////////////////////////////
// 74HC166 -8-bit parallel-in/serial out shift register
//
// Antonio Sanchez (@TheSonders)
////////////////////////////////////////

module HC166(
    input wire p2,p3,p4,p5,p10,p11,p12,p14,
	input wire p1,p15,p9,p7,p6,
	output wire p13
);

reg [7:0] d=8'h00;
assign p13=d[7];

always @(posedge p7 or negedge p9)begin
    if (~p9) d<=8'h00;
    else begin
        if (~p6) begin
            if (~p15) d<={p14,p12,p11,p10,p5,p4,p3,p2};
            else d<={d[6:0],p1};
        end
    end
end

endmodule