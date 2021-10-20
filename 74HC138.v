/////////////////////////////////////////
// 74HC138 - 3-to-8 line decoder/demultiplexer; inverting
//
// Antonio Sanchez (@TheSonders)
////////////////////////////////////////

module HC138(
    input wire p1,p2,p3,p4,p5,p6,
    output wire p15,p14,p13,p12,p11,p10,p9,p7
);

assign p15=~(({p4,p5,p6}==3'b001)&({p3,p2,p1}==3'b000));
assign p14=~(({p4,p5,p6}==3'b001)&({p3,p2,p1}==3'b001));
assign p13=~(({p4,p5,p6}==3'b001)&({p3,p2,p1}==3'b010));
assign p12=~(({p4,p5,p6}==3'b001)&({p3,p2,p1}==3'b011));
assign p11=~(({p4,p5,p6}==3'b001)&({p3,p2,p1}==3'b100));
assign p10=~(({p4,p5,p6}==3'b001)&({p3,p2,p1}==3'b101));
assign  p9=~(({p4,p5,p6}==3'b001)&({p3,p2,p1}==3'b110));
assign  p7=~(({p4,p5,p6}==3'b001)&({p3,p2,p1}==3'b111));
endmodule