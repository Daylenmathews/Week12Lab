module modul(
input wire clk,
input wire reset,
output reg [2:0]count,
output reg out
    );
 always@(posedge clk or posedge reset) begin
 if(reset)begin
 count <= 3'b000;
 out <= 1'b0;
 end
 else begin 
 if (count == 3'd5) begin
  count <= 3'b000;
  out <= ~out;
  end
  else begin
  count <= count + 1'b1;
  end
  end
  end
endmodule
