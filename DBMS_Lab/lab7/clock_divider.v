 // Clock divider module
 // The clock_divider module divides the input clock 
//frequency to create a slower clock signal for 
//debouncing.
 module clock_divider #(parameter N=1000000)(
 input clk_in,
 output reg clk_out
 );
 reg [26:0] counter;
 always @(posedge clk_in) begin
 if (counter == N -1) begin
 counter <= 0;
 clk_out<= ~clk_out;
 end else begin
 counter <= counter + 27'd1;
 end
 end
 endmodule