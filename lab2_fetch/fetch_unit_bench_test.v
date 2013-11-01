module fetch_unit_bench_test();

// Declare inputs as regs and outputs as wires
reg clock;
reg reset;
reg branch_ctrl;
reg jump_ctrl;
reg [7:0] jump_val;
reg [7:0] branch_val;
wire [8:0] instruction_val;


// Initialize all variables
initial begin

	clock = 1; 		
	
    /* 
    * Go through first 10 instructions
    * Instruction val  = pc - 1
    */
	#10
	#10
	#10
	#10
	#10
	#10
	#10
	#10
	#10
	#10

    //100 Ps
    //Instruction val =  200
    reset = 1; 

    //Instruction val = 0
	#10 
    reset = 0;

    //Testing out branch
    //Instruction =  40  (memory slot 21)
	#10 
    branch_ctrl = 1; 
    branch_val = 8'd20; 

    //Instruction = 38 (memory slot 22)
	#10 
    branch_ctrl = 0; 

    //Instruction = 31 (memory slot 12)
    #10
    branch_ctrl = 1;
    branch_val = -8'd10;


    // Instruction val = 0
	#10 reset = 1; branch_ctrl = 0;
	
	// Testing jump
	// Instruction  == 10
	#10 
	reset = 0; 
	jump_val = 8'd10;
	jump_ctrl = 1;
	
	
	
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
	.jump_ctrl(jump_ctrl),
	.branch_val(branch_val),
	.jump_val(jump_val),
	.instruction_val(instruction_val));

endmodule
