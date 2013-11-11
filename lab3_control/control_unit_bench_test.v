module test_bench_control_unit();

// Declare inputs as regs and outputs as wires
reg clock;
reg [8:0] instr;

wire [3:0] alu_func_ctrl;
wire [2:0] alu_spec_func_ctrl;
wire [2:0] reg_to_write;
wire alu_mux_ctrl;
wire mem_write;
wire mem_read;
wire branch;
wire reg_write;
wire swap_ctrl;
wire done_ctrl;
wire jump_ctrl;

// Initialize all variables
initial begin

	clock = 1; 		// initial value of clock
	
	/* 
	 * Check the sum instruction 
	 */
	#10; 
	instr = 9'b0000_10_100;		// add $2,$4
	// Expected ouput:
	// alu_func_ctrl = 0000
	// alu_spec_func_ctrl = xxx
	// alu_mux_ctrl = 0
	// reg_to_write = 010
	// mem_write = 0
	// mem_read = 0
	// branch = 0
	// reg_write = 1
	// swap_ctrl = 0
	// done_ctrl = 0
	// jump_ctrl = 0
	
	/* 
	 * Check the load instruction 
	 */
	#10; 
	instr = 9'b0001_11_101;		// load  $3, $5
	// Expected ouput:
	// alu_func_ctrl = xxxx
	// alu_spec_func_ctrl = xxx
	// alu_mux_ctrl = 0
	// reg_to_write = 011
	// mem_write = 0
	// mem_read = 1
	// branch = 0
	// reg_write = 1
	// swap_ctrl = 0
	// done_ctrl = 0
	// jump_ctrl = 0
	
	/* 
	 * Check the store instruction 
	 */
	#10; 
	instr = 9'b0010_10_101;		// store  $2, $5
	// Expected ouput:
	// alu_func_ctrl = xxxx
	// alu_spec_func_ctrl = xxx
	// alu_mux_ctrl = 0
	// reg_to_write = xxx
	// mem_write = 1
	// mem_read = 0
	// branch = 0
	// reg_write = 0
	// swap_ctrl = 0
	// done_ctrl = 0
	// jump_ctrl = 0
	
	/* 
	 * Check the shift left instruction 
	 */
	#10; 
	instr = 9'b0011_10_101;		// sl  $2, $5
	// Expected ouput:
	// alu_func_ctrl = 0011
	// alu_spec_func_ctrl = xxx
	// alu_mux_ctrl = 0
	// reg_to_write = 010
	// mem_write = 0
	// mem_read = 0
	// branch = 0
	// reg_write = 1
	// swap_ctrl = 0
	// done_ctrl = 0
	// jump_ctrl = 0
	
	/* 
	 * Check the shift right instruction 
	 */
	#10; 
	instr = 9'b0100_10_101;		// sr  $2, $5
	// Expected ouput:
	// alu_func_ctrl = 0100
	// alu_spec_func_ctrl = xxx
	// alu_mux_ctrl = 0
	// reg_to_write = 010
	// mem_write = 0
	// mem_read = 0
	// branch = 0
	// reg_write = 1
	// swap_ctrl = 0
	// done_ctrl = 0
	// jump_ctrl = 0
	
	/* 
	 * Check the set to instruction 
	 */
	#10; 
	instr = 9'b0101_11_111;		// stt  $3, $7
	// Expected ouput:
	// alu_func_ctrl = 0101
	// alu_spec_func_ctrl = xxx
	// alu_mux_ctrl = 0
	// reg_to_write = 011  <-------------- check this output
	// mem_write = 0
	// mem_read = 0
	// branch = 0
	// reg_write = 1
	// swap_ctrl = 0
	// done_ctrl = 0
	// jump_ctrl = 0
	
	/* 
	 * Check the set from instruction 
	 */
	#10; 
	instr = 9'b0110_11_111;		// stf  $3, $7
	// Expected ouput:
	// alu_func_ctrl = 0110
	// alu_spec_func_ctrl = xxx
	// alu_mux_ctrl = 0
	// reg_to_write = 111 <--------------- check this
	// mem_write = 0
	// mem_read = 0
	// branch = 0
	// reg_write = 1
	// swap_ctrl = 0
	// done_ctrl = 0
	// jump_ctrl = 0
    
    /* 
	 * Check the increment instruction 
	 */
	#10; 
	instr = 9'b0111_10_000;		// inc  $2
	// Expected ouput:
	// alu_func_ctrl = 0111
	// alu_spec_func_ctrl = 000
	// alu_mux_ctrl = x
	// reg_to_write = 010
	// mem_write = 0
	// mem_read = 0
	// branch = 0
	// reg_write = 1
	// swap_ctrl = 0
	// done_ctrl = 0
	// jump_ctrl = 0
    
    /* 
	 * Check the and one instruction 
	 */
	#10; 
	instr = 9'b0111_11_001;		// aon  $3
	// Expected ouput:
	// alu_func_ctrl = 0111
	// alu_spec_func_ctrl = 001
	// alu_mux_ctrl = x
	// reg_to_write = 011
	// mem_write = 0
	// mem_read = 0
	// branch = 0
	// reg_write = 1
	// swap_ctrl = 0
	// done_ctrl = 0
	// jump_ctrl = 0
    
    /* 
	 * Check the halt instruction 
	 */
	#10; 
	instr = 9'b0111_10_010;		// halt
	// Expected ouput:
	// alu_func_ctrl = xxxx
	// alu_spec_func_ctrl = xxx
	// alu_mux_ctrl = x
	// reg_to_write = xxx
	// mem_write = 0
	// mem_read = 0
	// branch = 0
	// reg_write = 0
	// swap_ctrl = 0
	// done_ctrl = 1
	// jump_ctrl = 0
    
    /* 
	 * Check the subtract 8 instruction 
	 */
	#10; 
	instr = 9'b0111_10_011;		// seg  $2
	// Expected ouput:
	// alu_func_ctrl = 0111
	// alu_spec_func_ctrl = 011
	// alu_mux_ctrl = x
	// reg_to_write = 010
	// mem_write = 0
	// mem_read = 0
	// branch = 0
	// reg_write = 1
	// swap_ctrl = 0
	// done_ctrl = 0
	// jump_ctrl = 0
    
    /* 
	 * Check the poker instruction 
	 */
	#10; 
	instr = 9'b0111_10_100;		// pkr  $2
	// Expected ouput:
	// alu_func_ctrl = 0111
	// alu_spec_func_ctrl = 100
	// alu_mux_ctrl = x
	// reg_to_write = 010
	// mem_write = 0
	// mem_read = 0
	// branch = 0
	// reg_write = 1
	// swap_ctrl = 0
	// done_ctrl = 0
	// jump_ctrl = 0
    
    /* 
	 * Check the swap instruction 
	 */
	#10; 
	instr = 9'b1001_10_110;		// swp  $2, $6
	// Expected ouput:
	// alu_func_ctrl = 1001
	// alu_spec_func_ctrl = xxx
	// alu_mux_ctrl = 0
	// reg_to_write = xxx
	// mem_write = 0
	// mem_read = 0
	// branch = 0
	// reg_write = 1
	// swap_ctrl = 1
	// done_ctrl = 0
	// jump_ctrl = 0
    
    /* 
	 * Check the set low instruction 
	 */
	#10; 
	instr = 9'b1010_1_0100;		// slw  1, 4 ($branch[3:0] = 4)
	// Expected ouput:
	// alu_func_ctrl = 1010
	// alu_spec_func_ctrl = xxx
	// alu_mux_ctrl = 1
	// reg_to_write = 111
	// mem_write = 0
	// mem_read = 0
	// branch = 0
	// reg_write = 1
	// swap_ctrl = 0
	// done_ctrl = 0
	// jump_ctrl = 0
    
    /* 
	 * Check the set high instruction 
	 */
	#10; 
	instr = 9'b1011_0_0100;		// slw  0, 4 ($imm[7:4] = 4)
	// Expected ouput:
	// alu_func_ctrl = 1011
	// alu_spec_func_ctrl = xxx
	// alu_mux_ctrl = 1
	// reg_to_write = 001
	// mem_write = 0
	// mem_read = 0
	// branch = 0
	// reg_write = 1
	// swap_ctrl = 0
	// done_ctrl = 0
	// jump_ctrl = 0
    
    /* 
	 * Check the branch on equal instruction 
	 */
	#10; 
	instr = 9'b1100_10_101;		// be  $2, $5
	// Expected ouput:
	// alu_func_ctrl = 1100
	// alu_spec_func_ctrl = xxx
	// alu_mux_ctrl = 0
	// reg_to_write = xxx
	// mem_write = 0
	// mem_read = 0
	// branch = 1
	// reg_write = 0
	// swap_ctrl = 0
	// done_ctrl = 0
	// jump_ctrl = 0
    
    /* 
	 * Check the branch on less than instruction 
	 */
	#10; 
	instr = 9'b1101_10_101;		// bl  $2, $5
	// Expected ouput:
	// alu_func_ctrl = 1101
	// alu_spec_func_ctrl = xxx
	// alu_mux_ctrl = 0
	// reg_to_write = xxx
	// mem_write = 0
	// mem_read = 0
	// branch = 1
	// reg_write = 0
	// swap_ctrl = 0
	// done_ctrl = 0
	// jump_ctrl = 0
    
    /* 
	 * Check the jump instruction 
	 */
	#10; 
	instr = 9'b1110_10_101;		// <----- Do we use any register or a special register?
	// Expected ouput:
	// alu_func_ctrl = 1101
	// alu_spec_func_ctrl = xxx
	// alu_mux_ctrl = 0
	// reg_to_write = xxx
	// mem_write = 0
	// mem_read = 0
	// branch = 1
	// reg_write = 0
	// swap_ctrl = 0
	// done_ctrl = 0
	// jump_ctrl = 0
end

// Clock generator
always begin
	#5 clock = ~clock; // Toggle clock every 5 ticks
	// this makes the clock cycle 10 ticks
end

// I copied this code verbatim from the control_unit_schematic.v that was
// generated by Quartus when I created the .v file from the .bdf.
control_unit	b2v_inst11(
	.clock(clock),
	.instruction(instr),
	.alu_src(alu_mux_ctrl),
	.mem_write(mem_write),
	.mem_read(mem_read),
	.branch(branch),
	.reg_write(reg_write),
	.swap_ctrl(swap_ctrl),
	.done_ctrl(done_ctrl),
	.jmp_ctrl(jump_ctrl),
	.alu_func(alu_func_ctrl),
	.alu_spec_func(alu_spec_func_ctrl),
	.reg_write_val(reg_to_write));


endmodule