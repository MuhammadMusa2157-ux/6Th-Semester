 // Switch FSM module
 // The switch button FSM is implementing the state machine for the requirement i-e when the push // 
//button is pressed the light if "off" turns "on" and if "on" turns "off".
 module switch_fsm(
 input clk,
 input pulse,
 output light
 );
 parameter OFF = 1'b0, ON = 1'b1;
 reg state;
 always @(posedge clk) begin
 if (pulse) begin
 case (state)
 OFF: state <= ON;
 ON: state <= OFF; 
endcase
 end
 end
 assign light = state;
 endmodule