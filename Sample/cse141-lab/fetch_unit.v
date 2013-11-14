
module fetch_unit(
	input clock,
	input branch_ctrl,
	input jump_ctrl,
   input done_ctrl,
	input init_ctrl,
	input [7:0] jump_val,
	input [7:0] branch_val,  // value stored in the $branch register
	output reg [7:0] instruction_number,
   output [16:0] cycle_counter
);

reg [7:0] pc;
reg [16:0] cycles;

initial begin 
    pc = 0;
    cycles = 0;
end

always @(posedge clock)
begin
	instruction_number <= pc;
	cycles <= cycles + 1;
	//cycle_counter <= cycles + 1;

	//Set program counter to 0 if reset = 1
   if(done_ctrl) $finish;
	if(init_ctrl) pc <= 0;
	
	//IF branch flag is set, set pc = addBranch
	else if(branch_ctrl == 1) pc = pc + branch_val;
	else if(jump_ctrl == 1) pc = jump_val;
	else pc <= pc + 1'b1;

end

assign cycle_counter = cycles;
	
endmodule
