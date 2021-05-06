module lhn_and (x, y, partial_product);
	input [6:0] x;
	input y;
	output [6:0] partial_product;
	
	assign partial_product={x[6]&y,x[5]&y,x[4]&y,x[3]&y,x[2]&y,x[1]&y,x[0]&y};
	
	endmodule 