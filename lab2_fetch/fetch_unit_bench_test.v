module fetch_unit_bench_test();

// Declare inputs as regs and outputs as wires
reg clock;
reg reset;
reg branch_ctrl;
reg [7:0] branch_val;

wire [7:0] instr_addr;


// Initialize all variables
initial begin

	clock = 1; 		// initial value of clock
	
	#10				//PC = 1
	#10
	#10
	#10 reset = 1; //should reset instr_addr
	#10 reset = 0;
	#10 branch_ctrl = 1; branch_val = 8'd10; 
	#10 branch_ctrl = 1; branch_val = 8'd20; 
	#10 branch_ctrl = 0; 
	#10
	#10
	#10 reset = 1;
	#10 reset = 0;
	
	
end

// Clock generator
always begin
	#5 clock = ~clock; // Toggle clock every 5 ticks
	// this makes the clock cycle 10 ticks
end



fetch_unit	b2v_inst(
	.clock(clock),
	.reset(reset),
	.branch_ctrl(branch_ctrl),
	.branch_val(branch_val),
	.instr_addr(instr_addr));

endmodule
