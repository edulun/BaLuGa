
module fetch_unit(
	input clock,
	input branch_ctrl,
	input jump_ctrl,
   input done_ctrl,
   input stall,
	input init_ctrl,
	input [7:0] jump_val,
	input [7:0] branch_val,  // value stored in the $branch register
	output reg [7:0] instruction_number,
   output [16:0] cycle_counter
);

reg [7:0] pc;
reg [7:0] bt_pc;
reg [7:0] branch_value;
reg [16:0] cycles;

initial begin 
    bt_pc = -2;
    pc = 0;
    cycles = 0;
end

always @(posedge clock)
begin
    branch_value <= branch_val;
    cycles <= cycles + 1;
    bt_pc <= pc - 2;
    if(stall == 1) instruction_number <= pc -1;
    else instruction_number <= pc;
    if(done_ctrl) $finish;

end

always @(negedge clock) begin
	if(stall == 1) pc <= pc;
    else if(branch_ctrl == 1) pc = bt_pc + branch_value;
    else if(jump_ctrl == 1) pc = jump_val;
	else if(init_ctrl) pc <= 0;
    else pc <= pc +1'b1;
end

assign cycle_counter = cycles;
	
endmodule
