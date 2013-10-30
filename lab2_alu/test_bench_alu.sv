module test_bench_alu();

// Declare inputs as regs and outputs as wires
reg clock;
reg [7:0] register_one;
reg [7:0] register_two;
reg [3:0] function_control;
reg [2:0] spec_function;

wire [7:0] result;
wire branch_out;

// Initialize all variables
initial begin

	clock = 1; 		// initial value of clock
	
	/* 
	 * Check the sum operation 
	 */
	#10 register_one = 8'b11;	// r1 = 3
	register_two = 8'b10;		// r2 = 2
	function_control = 4'b0;	// sum (3 + 2)
	
	/*
	 * Check the shift left operation
	 */
	#10; 
	register_one = 8'b111;		// r1 = 7
	register_two = 8'b11;		// r2 = 3
	function_control = 4'b11;	// (7 << 3) = 56
	
	/*
	 * Check the shift right operation
	 */
	#10;
	register_one = 8'b111000;	// r1 = 56
	register_two = 8'b11;		// r2 = 3
	function_control = 4'b100;	// (56 >> 3) = 7
	
	/*
	 * Check the increment operation
	 */
	#10;
	register_one = 8'b100;		// r1 = 4
	function_control = 4'b0111;	// Access special function
	spec_function = 4'b0;		// result = r1 + 1 = 5
	
	/*
	 * Check the and-one operation
	 */
	#10;
	register_one = 8'b100;		// r1 = 4
	function_control = 4'b0111;	// Access special function
	spec_function = 3'b001;		// result = r1 & 1 = 0
	
	#10;
	register_one = 8'b111001;	// r1 = 57
	function_control = 4'b0111;	// Access special function
	spec_function = 3'b001;		// result = r1 & 1 = 1
	
	/*
	 * Check the subtract-eight operation
	 */
	#10;
	register_one = 8'b1100;		// r1 = 12
	function_control = 4'b0111;	// Access special function
	spec_function = 3'b011;		// result = r1 - 8 = 4
	
	/*
	 * Check the branch on equal operation
	 */
	#10;
	register_one = 8'b11;		// r1 = 3
	register_two = 8'b11;		// r2 = 3
	function_control = 4'b1011;	// if (r1 == r2) branch_out = 1
	
	#10;
	register_one = 8'b11;		// r1 = 3
	register_two = 8'b1;		// r2 = 1
	function_control = 4'b1011;	// if (r1 != r2) branch_out = 0
	
	/*
	 * Check the branch on less than operation
	 */
	#10;
	register_one = 8'b10;		// r1 = 2
	register_two = 8'b11;		// r2 = 3
	function_control = 4'b1010;	// if (r1 < r2) branch_out = 1
	
	#10;
	register_one = 8'b1_0000;	// r1 = 16
	register_two = 8'b11;		// r2 = 3
	function_control = 4'b1010;	// if (r1 > r2) branch_out = 0
end

// Clock generator
always begin
	#5 clock = ~clock; // Toggle clock every 5 ticks
	// this makes the clock cycle 10 ticks
end

// I copied this code verbatim from the alu_schematic.v that was
// generated by Quartus when I created the .v file from the .bdf.
alu	b2v_inst(
	.clock(clock),
	.func(function_control),
	.reg1(register_one),
	.reg2(register_two),
	.spec_fun(spec_function),
	.br_out(branch_out),
	.res(result));

endmodule