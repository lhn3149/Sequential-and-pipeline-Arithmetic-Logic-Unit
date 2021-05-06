module lhn_ph_reg (Din,Rst, clock, Dout);
	input [6:0] Din;
	input Rst,clock;
	output reg [6:0] Dout;
	
	always @(posedge clock)
		if (Rst == 1) begin
			Dout = 7'b0000000;
			//ShOut= Dout[0];
		end
		else Dout=Din;
		
	endmodule 
		