module lhn_pipeline (M_val, m_val, clock, final_product ) ;
	input [6:0] M_val;
	input [3:0] m_val;
	input clock;
	output  [10:0] final_product;
	wire [3:0] m_val_pre, m_1, m_2, m_3,m_4;
	wire [6:0] M_1,M_2,M_3,M_4,ph_1,ph_2,ph_3,ph_4;
	
	
	lhn_preprocessing 		prepro 		(m_val, 4'b1000, m_val_pre);
	lhn_one_stage 				stage1		(M_val, 7'b0000000, m_val_pre,clock, M_1, m_1, ph_1);
	lhn_one_stage 				stage2		(M_1, ph_1, m_1,clock, M_2, m_2, ph_2);
	lhn_one_stage 				stage3		(M_2, ph_2, m_2,clock, M_3, m_3, ph_3);
	lhn_one_stage 				stage4		(M_3, ph_3, m_3,clock, M_4, m_4, ph_4);
	lhn_postprocessing 		postpro		({ph_4,m_4}, 11'b01010101010, final_product);
	
	
endmodule 