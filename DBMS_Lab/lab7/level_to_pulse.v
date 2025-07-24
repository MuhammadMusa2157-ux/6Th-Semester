// Level to pulse converter module
 // The level to pulse converter is there to convert level input from a push button into a pulse 
// that is high for only one clock cycle.
 module level_to_pulse(
 input clk,
 input level_in,
 output pulse_out
 );
 reg prev_level;
 always @(posedge clk) begin
 prev_level <= level_in;
 end
 assign pulse_out = level_in && !prev_level; 
endmodule