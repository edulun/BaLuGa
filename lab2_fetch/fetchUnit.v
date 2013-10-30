
module FETCH_UNIT (
	input clock,
	input resetFlag,
	input branchFlag,
	input [7-0] pc,
	input [7-0] branchImm,
	output [7-0] instr_addr
	
	
);

wire add1, addbranch

initial pc = 0;

always @(posedge clk)
begin
	//Set program counter to 0 if reset = 1
	if(resetFlag == 1'b1) pc <= 0;
	
	//add1 = pc ++;
	add1 <= pc + 7'b0001;

	//addBranch = address if branch flag is set to 1
	addBranch <= pc + branchVal;
	
	//IF branch flag is set, set pc = addBranch
	if(branchFlag == 1'b1)
		pc = addBranch;
	else pc <= add1;

	instr_addr <= pc;
		
	
end
		
