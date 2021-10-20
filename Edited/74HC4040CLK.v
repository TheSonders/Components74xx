/////////////////////////////////////////
// 74HC4040 - 12-stage binary ripple counter
// Negative clock trigger positive async clear
//
// Modified for sinc and FPGA friendly
// Antonio Sanchez (@TheSonders)
////////////////////////////////////////

module HC4040CLK(
    input wire clk,
	input wire p10,p11,
	output wire p9,p7,p6,p5,p3,p2,p4,p13,p12,p14,p15,p1
);

reg [11:0] d=0;
reg prev_p10=0;

assign {p1,p15,p14,p12,p13,p4,p2,p3,p5,p6,p7,p9}= d;

always @(posedge clk or posedge p11) begin
    if (p11) d<=12'h000;
    else begin
        prev_p10<=p10;
        if (prev_p10 & ~p10) d<=d+12'h001; //Neg Edge on p10
        end
end

endmodule