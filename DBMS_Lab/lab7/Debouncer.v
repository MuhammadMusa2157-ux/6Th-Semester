// Debouncer module
 // The debouncer module filters out noise from the
 // button input signal.
 // It uses a clock divider to create a slower clock 
// signal for debouncing.
 module debouncer(
 input clk,
 input button_in,
 output reg button_out
 );
 wire clk_50hz;
 // 1,000,000 ticks for 20ms second at 50Hz
clock_divider #(1000000) CD0(clk, clk_50hz); 
always @(posedge clk_50hz)
 begin
 button_out <= button_in;
 end
 endmodule