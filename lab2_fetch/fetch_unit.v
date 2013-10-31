
module FETCH_UNIT (
	input clock,
	input reset,
	input branchFlag,
	input [7:0] branchImm,  // value stored in the $branch register
	output [7:0] instr_addr	
);

wire add1, addbranch
reg [7:0] pc;

initial begin 
    pc = 0;
end

always @(posedge clk)
begin
	//Set program counter to 0 if reset = 1
	if(reset == 1'b1) pc <= 0;
	
	//add1 = pc ++;
	add1 <= pc + 8'b1;

	//addBranch = address if branch flag is set to 1
	addBranch <= pc + branchImm;
	
	//IF branch flag is set, set pc = addBranch
	if(branchFlag == 1'b1)
		pc = addBranch;
	else pc <= add1;

	instr_addr <= pc;
		
	
end
		
