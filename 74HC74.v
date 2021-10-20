/////////////////////////////////////////
// 74HC74 - Dual D-type flip-flop with asynchronous set and reset; positive edge-trigger
//
// Antonio Sanchez (@TheSonders)
////////////////////////////////////////

module HC74(
    input wire p1,p2,p3,p4,
    output reg p5=1'b0,
    output reg p6=1'b1,
    input wire p13,p12,p11,p10,
    output reg p9=1'b0,
    output reg p8=1'b1
);

always @(posedge p3 or negedge p1 or negedge p4) begin
    case ({p1,p4})
    2'b00:  begin p5<=1'b1;p6<=1'b1;end
    2'b10:  begin p5<=1'b1;p6<=1'b0;end
    2'b01:  begin p5<=1'b0;p6<=1'b1;end
    default: if (p3)begin p5<=p2;p6<=~p2;end
    endcase
end

always @(posedge p11 or negedge p13 or negedge p10) begin
    case ({p13,p10})
    2'b00:  begin p9<=1'b1;p8<=1'b1;end
    2'b10:  begin p9<=1'b1;p8<=1'b0;end
    2'b01:  begin p9<=1'b0;p8<=1'b1;end
    default:if (p11)begin p9<=p12;p8<=~p12;end
    endcase
end

endmodule