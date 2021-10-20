/////////////////////////////////////////
// 74HC574 - Octal D-type flip-flop; positive edge-trigger; 3-state
//
// Modified for sync and FPGA friendly
// Antonio Sanchez (@TheSonders)
////////////////////////////////////////

module HC574CLK(
    input wire clk,
    input wire p2,p3,p4,p5,p6,p7,p8,p9,
	input wire p1,p11,
	output wire p19,p18,p17,p16,p15,p14,p13,p12
);

reg [7:0] d;
reg prev_p11=1;

assign {p12,p13,p14,p15,p16,p17,p18,p19}= (p1)?8'bZZZZZZZZ:d;

always @(posedge clk) begin
    prev_p11<=p11;
    if (~prev_p11 & p11)        //Pos Edge on p11
        d<={p9,p8,p7,p6,p5,p4,p3,p2};
end

endmodule