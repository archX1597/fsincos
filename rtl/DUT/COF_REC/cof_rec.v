module cof_rec_top(
	input [167:0] cof_torec,
	input cof_sign_rev,
	input sel_DorX,
	input sin_or_cos,
	output [7:0] cof_exp_3,cof_exp_2,cof_exp_1,cof_exp_0,
	output cof_sign_3,cof_sign_2,cof_sign_1,cof_sign_0,
	output [35:0] cof_frac_3,cof_frac_2,
	output [39:0] cof_frac_0,cof_frac_1
);
	


	cof_rec_3 #(
		.I_EXP_WIDTH (5),
		.O_EXP_WIDTH (8),
		.FRAC_WIDTH  (35),
		.O_FRAC_WIDTH(36)
	)
	u_cof_rec_3 (
		// Inputs
		.cof_sign_rev(cof_sign_rev),
		.exp_to_rec  (cof_torec[39:35]),
		.frac_to_rec (cof_torec[34:0]),
		.sin_or_cos  (sin_or_cos),
		// Outputs
		.cof_exp     (cof_exp_3),
		.cof_frac    (cof_frac_3),
		.cof_sign    (cof_sign_3)
	);



	cof_rec_2 #(
		.I_EXP_WIDTH (5),
		.O_EXP_WIDTH (8),
		.FRAC_WIDTH  (35),
		.O_FRAC_WIDTH(36)
	)
	u_cof_rec_2 (
		// Inputs
		.exp_to_rec (cof_torec[79:75]),
		.frac_to_rec(cof_torec[74:40]),
		// Outputs
		.cof_exp    (cof_exp_2),
		.cof_frac   (cof_frac_2),
		.cof_sign   (cof_sign_2)
	);
	
	cof_rec_1 #(
		.I_EXP_WIDTH (5),
		.O_EXP_WIDTH (8),
		.FRAC_WIDTH  (39),
		.O_FRAC_WIDTH(40)
	)
	u_cof_rec_1 (
		// Inputs
		.exp_to_rec        (cof_torec[123:119]),
		.frac_to_rec       (cof_torec[118:80]),
		.i_X_APPRO_or_0_125(~sel_DorX),
		.sin_or_cos        (sin_or_cos),
		// Outputs
		.cof_exp           (cof_exp_1),
		.cof_frac          (cof_frac_1),
		.cof_sign          (cof_sign_1)
	);
	


	cof_rec_0 #(
		.I_EXP_WIDTH (5),
		.O_EXP_WIDTH (8),
		.FRAC_WIDTH  (39),
		.O_FRAC_WIDTH(40)
	)
	u_cof_rec_0 (
		// Inputs
		.exp_to_rec (cof_torec[167:163]),
		.frac_to_rec(cof_torec[162:124]),
		// Outputs
		.cof_exp    (cof_exp_0),
		.cof_frac   (cof_frac_0),
		.cof_sign   (cof_sign_0)
	);
	
endmodule




module cof_rec_3 #(
    parameter I_EXP_WIDTH  = 5,
    parameter O_EXP_WIDTH  = 8,
    parameter FRAC_WIDTH = 35,
    parameter O_FRAC_WIDTH = 36
) (
    input  sin_or_cos                       ,
    input  [I_EXP_WIDTH  -1  : 0] exp_to_rec,
    input  [FRAC_WIDTH   -1  : 0] frac_to_rec,
    input  cof_sign_rev                     ,
    output [O_FRAC_WIDTH -1  : 0] cof_frac,
    output [O_EXP_WIDTH  -1  : 0] cof_exp,
    output cof_sign
);
    
    assign cof_exp = {{3{exp_to_rec[I_EXP_WIDTH-1]}},exp_to_rec};
    assign cof_frac = {1'b1,frac_to_rec};
    assign cof_sign = (~sin_or_cos) ? 1'b1 : 1'b0^cof_sign_rev;

endmodule

module cof_rec_2 #(
    parameter I_EXP_WIDTH  = 5,
    parameter O_EXP_WIDTH  = 8,
    parameter FRAC_WIDTH = 35,
    parameter O_FRAC_WIDTH = 36
) (
    input  [I_EXP_WIDTH    -1  : 0] exp_to_rec,
    input  [FRAC_WIDTH   -1  : 0] frac_to_rec,
    output [O_FRAC_WIDTH -1  : 0] cof_frac,
    output [O_EXP_WIDTH  -1  : 0] cof_exp,
    output cof_sign
);
    
    assign cof_exp = {{3{exp_to_rec[I_EXP_WIDTH-1]}},exp_to_rec};
    assign cof_frac = {1'b1,frac_to_rec};
    assign cof_sign = 1'b1;

endmodule

module cof_rec_1#(
    parameter I_EXP_WIDTH  = 5,
    parameter O_EXP_WIDTH  = 8,
    parameter FRAC_WIDTH = 39,
    parameter O_FRAC_WIDTH = 40
) (
    input  sin_or_cos                     ,
    input  [I_EXP_WIDTH  -1  : 0] exp_to_rec,
    input  [FRAC_WIDTH   -1  : 0] frac_to_rec,
    input  i_X_APPRO_or_0_125  ,
    output [O_FRAC_WIDTH -1  : 0] cof_frac,
    output [O_EXP_WIDTH  -1  : 0] cof_exp,
    output cof_sign
);
    
    assign cof_exp = {{3{exp_to_rec[I_EXP_WIDTH-1]}},exp_to_rec};
    assign cof_frac = {1'b1,frac_to_rec};
    assign cof_sign = (~sin_or_cos) ? 1'b0&~i_X_APPRO_or_0_125 : 1'b1&~i_X_APPRO_or_0_125; 
endmodule

module cof_rec_0#(
    parameter I_EXP_WIDTH  = 5,
    parameter O_EXP_WIDTH  = 8,
    parameter FRAC_WIDTH = 39,
    parameter O_FRAC_WIDTH = 40
) (
    input  [I_EXP_WIDTH  -1  : 0] exp_to_rec ,
    input  [FRAC_WIDTH   -1  : 0] frac_to_rec,
    output [O_FRAC_WIDTH -1  : 0] cof_frac,
    output [O_EXP_WIDTH  -1  : 0] cof_exp,
    output cof_sign
);
    
    assign cof_exp  = {{3'b111,exp_to_rec}};
    assign cof_frac = {1'b1,frac_to_rec};
    assign cof_sign = 1'b0;
endmodule