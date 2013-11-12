
module fetch_unit(
	input clock,
	input reset,
	input branch_ctrl,
	//input [7:0] branch_val,  // value stored in the $branch register
	input jump_ctrl,
	//input [7:0] jump_val,
	output [7:0] pc
);

reg [7:0] pc_out;
// reg [8:0] rom [0:29];
assign pc = pc_out;

initial begin 
    pc_out = 0;    
end

always @ (posedge clock) begin

	// instruction_val <= rom[pc];
	//assign pc <= pc_out;
		
	// set program counter to 0 if reset = 1
	if (reset == 1) 
		pc_out <= 0;	
	// if branch flag is set, set pc = addBranch
	//else if (branch_ctrl == 1) 
		//pc <= pc + branch_val;
	//else if (jump_ctrl == 1) 
		//pc_out <= jump_val;
	else 
		pc_out <= pc_out + 1;
end
	
endmodule
