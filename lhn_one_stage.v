module lhn_one_stage (M,ph,mpl,clock,n_M,n_mpl,n_ph); 
	input [6:0] M,ph;
	input [3:0] mpl;
	input clock;
	output [6:0] n_M,n_ph;
	output [3:0] n_mpl;
	
	wire [6:0] M_out,ph_out,partial_product,sum;
	wire [3:0] mpl_out;
	wire carryout;
	
	wire Rst_M,Rst_mpl,Rst_ph; //what should I put for reset?
	
	lhn_M_reg 				first_M_reg 	(M, 1'b0, clock, M_out);
	lhn_ph_reg  			first_ph_reg 	(ph, 1'b0, clock, ph_out);
	lhn_mpl_reg 			first_mpl_reg 	(mpl, 1'b0, clock, mpl_out);
	lhn_and 					createPP 		(M_out,mpl_out[0],partial_product); 
	lhn_7bit_adder 		adder 			(1'b0, partial_product, ph_out, sum, carryout);
	assign n_M = M_out;
	assign n_ph = {carryout,sum[6:1]};
	assign n_mpl = {sum[0],mpl_out[3:1]};
	
	//lhn_M_reg 				second_M_reg 	(M_out, 1'b0, clock, n_M);
	//lhn_ph_reg				second_ph_reg	({carryout,sum[6:1]}, 1'b0, clock, n_ph);
	//lhn_mpl_reg				second_mpl_reg	({sum[0], mpl_out[3:1]}, 1'b0, clock, n_mpl);
	
	endmodule 
	