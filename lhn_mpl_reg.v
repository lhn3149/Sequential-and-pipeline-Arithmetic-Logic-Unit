module lhn_mpl_reg (Din,Rst,clock, Dout);
	input [3:0] Din;
	input Rst, clock;
	output reg [3:0] Dout;
	always @(posedge clock)
		if (Rst==1) 
			begin 
				Dout = 4'b0000;
			end
		else Dout=Din;
		
		
		
	endmodule 