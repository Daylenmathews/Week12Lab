module top(
input btnU,
input btnC,
output [6:0]led
);
wire [2:0]ripple_q;

ripple part_1(
.clk(btnC),
.reset(btnU),
.q(ripple_q)
);
assign ripple_q[0] = led[0];
assign ripple_q[1] = led[1];
assign ripple_q[2] = led[2];

wire [2:0]modulcount;
wire modulout;
modul part_2(
.clk(btnC),
.reset(btnU),
.count(modulcount),
.out(modulout)
);
assign modulcount[0] = led[3];
assign modulcount[1] = led[4];
assign modulcount[2] = led[5];
assign modulout = led[6];
endmodule
