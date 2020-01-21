module nios2_PIOLED(
	input wire in_clk, 
	input wire [9:0] in_switch, 
	input wire [3:0] in_button,
	output wire [9:0] out_led, 
	output wire [6:0] seven_segment_0, 
	output wire [6:0] seven_segment_1, 
	output wire [6:0] seven_segment_2, 
	output wire [6:0] seven_segment_3, 
	output wire [6:0] seven_segment_4, 
	output wire [6:0] seven_segment_5);
	//
	// terminate unnecessary LEDs
	//
	assign seven_segment_0 = 7'd0;
	assign seven_segment_1 = 7'd0;
	assign seven_segment_2 = 7'd0;
	assign seven_segment_3 = 7'd0;
	assign seven_segment_4 = 7'd0;
	assign seven_segment_5 = 7'd0;
	//
	assign out_led[9:8] = 2'b0;
	//
	nios2_PIOLED_qsys nios2_PIOLED_qsys(
		.clk_clk(in_clk),                          //                       clk.clk
		.pio_0_external_connection_export(out_led[7:0]), // pio_0_external_connection.export
		.reset_reset_n(in_button[0])                     //                     reset.reset_n
	);
endmodule