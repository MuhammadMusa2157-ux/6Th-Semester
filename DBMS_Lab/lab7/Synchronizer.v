 // Synchronizer module
 // Synchronizer circuit is used to avoid the
 // metastability problem which arises when synchronous 
// digital system are fed with an asynchronous input.
 module synchronizer(
 input clk,
 input async_in,
 output reg sync_out
 );
 reg reg1;
 always @(posedge clk) begin
 reg1 <= async_in;
 sync_out <= reg1;
 end
 endmodule