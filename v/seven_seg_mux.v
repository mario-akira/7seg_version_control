module seven_seg_mux(
	input				[3:0]			data_IN,
	output	reg	[7:0]			seven_segOUT
);
//=======================================================
//  REG/WIRE declarations
//=======================================================

//=======================================================
//  Structural coding
//=======================================================

always @(*)begin
	seven_segOUT[7] = 1'b0;
	case(data_IN[3:0])
		4'h1: seven_segOUT[6:0] = 7'b1111001;
		4'h2: seven_segOUT[6:0] = 7'b0100100;
		4'h3: seven_segOUT[6:0] = 7'b0110000;
		4'h4: seven_segOUT[6:0] = 7'b0011001;
		4'h5: seven_segOUT[6:0] = 7'b0010010;
		4'h6: seven_segOUT[6:0] = 7'b0000010;
		4'h7: seven_segOUT[6:0] = 7'b1111000;
		4'h8: seven_segOUT[6:0] = 7'b0000000;
		4'h9: seven_segOUT[6:0] = 7'b0011000;
		4'ha: seven_segOUT[6:0] = 7'b0001000;
		4'hb: seven_segOUT[6:0] = 7'b0000011;
		4'hc: seven_segOUT[6:0] = 7'b1000110;
		4'hd: seven_segOUT[6:0] = 7'b0100001;
		4'he: seven_segOUT[6:0] = 7'b0000110;
		4'hf: seven_segOUT[6:0] = 7'b0001110;
		4'h0: seven_segOUT[6:0] = 7'b1000000;
	endcase
end
endmodule
