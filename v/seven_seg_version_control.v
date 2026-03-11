module seven_seg_version_control(
	input				[11:0]		version_IN,
	output		   [7:0]			HEX0_OUT,
	output		   [7:0]			HEX1_OUT,
	output		   [7:0]			HEX2_OUT
);

//=======================================================
//  REG/WIRE declarations
//=======================================================

//=======================================================
//  Structural coding
//=======================================================
seven_seg_mux	seven_seg_mux_inst_1(
	.data_IN(version_IN[11:8]),
	.seven_segOUT(HEX0_OUT[7:0])
);

seven_seg_mux	seven_seg_mux_inst_2(
	.data_IN(version_IN[7:4]),
	.seven_segOUT(HEX2_OUT[7:0])
);

seven_seg_mux	seven_seg_mux_inst_3(
	.data_IN(version_IN[3:0]),
	.seven_segOUT(HEX3_OUT[7:0])
);

endmodule
