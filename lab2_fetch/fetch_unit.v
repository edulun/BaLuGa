
module fetch_unit(
	input clock,
	input reset,
	input branch_ctrl,
	input [7:0] branch_val,  // value stored in the $branch register
	output reg [7:0] instr_addr	
);

reg [7:0] pc;

initial begin 
    pc = 0;
end

always @(posedge clock)
begin
	instr_addr <= pc;	
	//Set program counter to 0 if reset = 1
	if(reset == 1) pc <= 0;
	
	//IF branch flag is set, set pc = addBranch
	else if(branch_ctrl == 1) pc = pc + branch_val;
	else pc <= pc + 1'b1;

		
	
end
	
endmodule
