module ripple(
input wire clk,
input wire reset,
output wire [2:0]q
);
t_ff tff0(.clk(clk), .reset(reset), .q(q[0]));
t_ff tff1(.clk(q[0]), .reset(reset), .q(q[1]));
t_ff tff2(.clk(q[1]), .reset(reset), .q(q[2]));
endmodule

module t_ff(
input wire clk,
input wire reset,
output reg q
); 
always@(posedge clk or posedge reset) begin
if(reset)
q <= 1'b0;
else
q <= ~q;
end
endmodule
