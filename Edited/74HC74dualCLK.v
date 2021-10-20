/////////////////////////////////////////
// 74HC74 - Dual D-type flip-flop with asynchronous set and clear;
//           positive edge-trigger
// Modified for sync and FPGA friendly
//
// UNIT A
// Single D flip-floop with asynchronous set; positive edge-trigger
// DATA p2 - CLK p3 - Q p5 - notQ p6 - PRESET p4 - CLEAR p1 (not valid)
//
// UNIT B
// Single D flip-floop with asynchronous clear; positive edge-trigger
// DATA p12 - CLK p11 - Q p9 - notQ p8 - PRESET p10(not valid) - CLEAR p13
// Antonio Sanchez (@TheSonders)
////////////////////////////////////////

module HC74dualCLK(
    input wire  clk,
    input wire  p1,p2,p3,p4,
    output reg  p5=1'b0,
    output wire p6,
    input wire  p13,p12,p11,p10,
    output reg  p9=1'b0,
    output wire p8);

assign p6=~p5;
assign p8=~p9;

reg prev_p3=1;
always @(posedge clk or negedge p4) begin
	if (~p4) begin p5<=1'b1;end
	else begin
        prev_p3<=p3;
        if (~prev_p3 & p3)             //Pos Edge on p3
        begin p5<=p2;end
    end
end

reg prev_p11=1;
always @(posedge clk or negedge p13) begin
	if (~p13) begin p9<=1'b0;end
	else begin
        prev_p11<=p11;
        if (~prev_p11 & p11)           //Pos Edge on p11
        begin p9<=p12;end
    end
end

endmodule