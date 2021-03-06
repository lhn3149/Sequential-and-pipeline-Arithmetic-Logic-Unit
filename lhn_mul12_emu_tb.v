`timescale 1 ps / 1 ps
module lhn_mul12_emu_tb;
	reg [4:0] M_bits_tb;
	reg clock_tb;
	wire [10:0] final_product_tb;
	
	lhn_mul12_emu dut (M_bits_tb, clock_tb, final_product_tb);
	
	initial 
	
	begin 
				M_bits_tb = 4'b0000;
				clock_tb = 1'b0;
				#20000
				clock_tb = 1'b1;
				#20000; 
				
				
				M_bits_tb = 4'b1111;
				clock_tb = 1'b0;
				#20000;
				clock_tb = 1'b1;
				#20000; 
				
				M_bits_tb = 4'b0101;
				clock_tb = 1'b0;
				#20000;
				clock_tb = 1'b1;
				#20000; 

				
				M_bits_tb = 4'b1010;	
				clock_tb = 1'b0;
				#20000
				clock_tb = 1'b1;
				#20000; 
				
				
				M_bits_tb = 4'b1010;	
				clock_tb = 1'b0;
				#20000
				clock_tb = 1'b1;
				#20000;

				clock_tb = 1'b0;
				#20000
				clock_tb = 1'b1;
				#20000;	
				clock_tb = 1'b0;
				#20000
				clock_tb = 1'b1;
				#20000;	
				clock_tb = 1'b0;
				#20000
				clock_tb = 1'b1;
				#20000;	
				clock_tb = 1'b0;
				#20000
				clock_tb = 1'b1;
				#20000;	
				clock_tb = 1'b0;
				#20000
				clock_tb = 1'b1;
				#20000;	
				clock_tb = 1'b0;
				#20000
				clock_tb = 1'b1;
				#20000;
				clock_tb = 1'b0;
				#20000
				clock_tb = 1'b1;
				#20000;
				
	end
	
	
	
endmodule 