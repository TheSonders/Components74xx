/////////////////////////////////////////
// 74HC174 - Hex D-type flip-flop with reset; positive-edge trigger
//
// Modified for sync and FPGA friendly
// Antonio Sanchez (@TheSonders)
////////////////////////////////////////

module HC174CLK(
    input wire clk,
    input wire p3,p4,p6,p11,p13,p14,
	input wire p9,p1,
	output wire p2,p5,p7,p10,p12,p15
);

reg [5:0] d=6'h00;
assign {p15,p12,p10,p7,p5,p2}=d;

reg prev_p9=1;

always @(posedge clk or negedge p1)begin
    if (~p1) d<=6'h00;
    else begin 
        prev_p9<=p9;
        if (~prev_p9 & p9)         //Pos Edge on p9
        d<={p14,p13,p11,p6,p4,p3};
    end
end

endmodule