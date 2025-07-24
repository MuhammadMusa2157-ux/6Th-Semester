`timescale 1ns / 1ps
 module level_to_pulse_tb;
 reg clk;
 reg level_in;
 wire pulse_out;
 level_to_pulse uut ( .clk(clk), .level_in(level_in), .pulse_out(pulse_out));
 always #5 clk = ~clk;
 initial begin
 clk = 0;
 level_in = 0;
 #10
 level_in = 1;
 #50;
 $finish;
 end
 endmodule