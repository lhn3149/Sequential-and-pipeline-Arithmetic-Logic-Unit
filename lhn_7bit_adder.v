module lhn_7bit_adder (carryin, x, y, s, carryout);
	input carryin;
	input	[6:0] x, y;
	output [6:0] s;
	output carryout;
	wire	[6:1] c;
	
	fulladd stage0 (carryin, x[0], y[0], s[0], c[1]);
	fulladd stage1 (c[1], x[1], y[1], s[1], c[2]);
	fulladd stage2 (c[2], x[2], y[2], s[2], c[3]);
	fulladd stage3 (c[3], x[3], y[3], s[3], c[4]);
	fulladd stage4 (c[4], x[4], y[4], s[4], c[5]);
	fulladd stage5 (c[5], x[5], y[5], s[5], c[6]);
	fulladd stage6 (c[6], x[6], y[6], s[6], carryout);
	
endmodule

module fulladd (Cin, x, y, s, Cout);
	input Cin, x, y;
	output s, Cout;
	
	assign s = x ^ y ^ Cin;
	assign Cout = (x & y) | (x & Cin) | (y & Cin);
		    
endmodule
