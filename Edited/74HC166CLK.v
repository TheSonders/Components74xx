/////////////////////////////////////////
// 74HC166 -8-bit parallel-in/serial out shift register
//      with async clear, sync load/shift
//
// Modified for sync and FPGA friendly
// Antonio Sanchez (@TheSonders)
////////////////////////////////////////

module HC166CLK(
    input wire clk,
    input wire p2,p3,p4,p5,p10,p11,p12,p14,
	input wire p1,p15,p9,p7,p6,
	output wire p13
);

reg [7:0] d=8'h00;
assign p13=d[7];
reg prev_p7=1;

always @(posedge clk or negedge p9)begin
    if (~p9) d<=8'h00;
    else begin
        prev_p7<=p7;
        if (~prev_p7 & p7) begin        //Pos Edge on p7
            if (~p6) begin
                if (~p15) d<={p14,p12,p11,p10,p5,p4,p3,p2};
                else d<={d[6:0],p1};
            end
        end
    end
end

endmodule