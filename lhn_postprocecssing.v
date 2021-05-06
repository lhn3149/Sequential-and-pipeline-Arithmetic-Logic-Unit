module lhn_postprocessing (Din, post_pro, Dout);
	input [10:0] Din, post_pro;
	output [10:0] Dout;
	
	assign Dout = Din | post_pro;
	
endmodule 