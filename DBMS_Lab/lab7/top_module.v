 // Top level module
 // The top-level module that integrates the debouncer, synchronizer, level to pulse converter, and FSM.
 // It takes the clock and button input and produces the light output.
 module light_switch(
 input clk,
 input button,
 output light
 );
 wire debounced_button;
 wire synchronized_button;
 wire pulse;
 // Instantiate the modules
 // The clock divider is not instantiated here as it is used inside the debouncer module.
 debouncer debounce(.clk(clk), .button_in(~button), .button_out(debounced_button) );
 // The debounced button signal is synchronized to the clock domain.
 // This is important to avoid metastability issues.
 synchronizer sync( .clk(clk), .async_in(debounced_button), .sync_out(synchronized_button));
 // The synchronized button signal is converted to a pulse signal.
 level_to_pulse converter(.clk(clk), .level_in(synchronized_button), .pulse_out(pulse));
 // The pulse signal is fed into the FSM to control the light state.
 switch_fsm fsm(.clk(clk), .pulse(pulse), .light(light));
 endmodule