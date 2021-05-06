module lhn_mul12_emu (M_bits, clock, final_product);

	input [3:0] M_bits; //multiplicand
	input clock;
	//input start;
	output [10:0] final_product;
	//output finish;
	wire [6:0] M_val;
	
	assign M_val = {M_bits[2:0],M_bits};
	lhn_pipeline stage0 (M_val,M_bits, clock, final_product);

endmodule 