module fetch_unit_bench_test();

// Declare inputs as regs and outputs as wires
reg clock;
reg reset;
reg branch_ctrl;
reg [7:0] branch_val;
wire [8:0] instruction_val;


// Initialize all variables
initial begin

	clock = 1; 		// initial value of clock
	
	#10				//PC = 1
	#10
	#10
	#10 reset = 1; //should reset instruction_val
	#10 reset = 0;
	#10 branch_ctrl = 1; branch_val = 8'd3; 
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
	.instruction_val(instruction_val));

endmodule
