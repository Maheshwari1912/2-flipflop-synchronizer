module two_ff_sync(
  input clk,
  input rst,
  input async_data_in,
  output sync_data_out
);
  reg ff1,ff2;
  always@(posedge clk or posedge rst) begin
    if(rst) begin
      ff1<=1'b0;
      ff2<=1'b0;
    end else begin
      ff1<=async_data_in;
      ff2<=ff1;
    end
  end
  assign sync_data_out=ff2;
  endmodule
