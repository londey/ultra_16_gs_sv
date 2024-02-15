

module Switches_To_LEDs (
    input i_Switch1,
    input i_Switch2,
    input i_Switch3,
    input i_Switch4,
    output o_LED_1,
    output o_LED_2,
    output o_LED_3,
    output o_LED_4
);

assign o_LED_1 = i_Switch1;
assign o_LED_2 = i_Switch2;
assign o_LED_3 = i_Switch3;
assign o_LED_4 = i_Switch4;
     
endmodule
