module test_sample();

// Declare inputs as regs and outputs as wires
reg clock;

wire [7:0] alu_result;
wire [7:0] pc_out;
wire mem_write_ctrl;
wire mem_read_ctrl;
wire [8:0] instruction;


// Initialize all variables
initial begin

	clock = 1; 		// initial value of clock
	
	/* 
	 * Check the sum operation 
	 */
	#10 
	//register_one = 8'b11;	// r1 = 3
	//register_two = 8'b10;		// r2 = 2
	//function_control = 4'b0;	// sum (3 + 2) = 5
	
	#10;
	//register_one = 8'b1111_1101;	// r1 = -3
	//register_two = 8'b1111_1101;	// r2 = -3
									// sum (-3 + -3) = -6
	
end

// Clock generator
always begin
	#5 clock = ~clock; // Toggle clock every 5 ticks
	// this makes the clock cycle 10 ticks
end

// I copied this code verbatim from the alu_schematic.v that was
// generated by Quartus when I created the .v file from the .bdf.
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	[2:0] SYNTHESIZED_WIRE_2;
wire	[7:0] SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	[3:0] SYNTHESIZED_WIRE_6;
wire	[7:0] SYNTHESIZED_WIRE_7;
wire	[7:0] SYNTHESIZED_WIRE_8;
wire	[2:0] SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	[7:0] SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	[7:0] SYNTHESIZED_WIRE_15;

assign	alu_result = SYNTHESIZED_WIRE_3;
assign	pc_out = SYNTHESIZED_WIRE_13;




control_unit	b2v_inst(
	.clock(clock),
	.instruction(instruction),
	.alu_src(SYNTHESIZED_WIRE_14),
	.mem_write(mem_write_ctrl),
	.mem_read(mem_read_ctrl),
	.branch(SYNTHESIZED_WIRE_4),
	.reg_write(SYNTHESIZED_WIRE_0),
	.swap_ctrl(SYNTHESIZED_WIRE_1),
	.done_ctrl(SYNTHESIZED_WIRE_10),
	.jmp_ctrl(SYNTHESIZED_WIRE_12),
	.alu_func(SYNTHESIZED_WIRE_6),
	.alu_spec_func(SYNTHESIZED_WIRE_9),
	.reg_write_val(SYNTHESIZED_WIRE_2));


register_file	b2v_inst1(
	.clock(clock),
	.write_ctrl(SYNTHESIZED_WIRE_0),
	.swap_ctrl(SYNTHESIZED_WIRE_1),
	.read_reg1(instruction[4:3]),
	.read_reg2(instruction[2:0]),
	.write_reg(SYNTHESIZED_WIRE_2),
	.write_val(SYNTHESIZED_WIRE_3),
	.read_val1(SYNTHESIZED_WIRE_7),
	.read_val2(SYNTHESIZED_WIRE_15));

assign	SYNTHESIZED_WIRE_11 = SYNTHESIZED_WIRE_4 & SYNTHESIZED_WIRE_5;


alu	b2v_inst3(
	.clock(clock),
	.func(SYNTHESIZED_WIRE_6),
	.reg1(SYNTHESIZED_WIRE_7),
	.reg2(SYNTHESIZED_WIRE_8),
	.spec_fun(SYNTHESIZED_WIRE_9),
	.br_out(SYNTHESIZED_WIRE_5),
	.res(SYNTHESIZED_WIRE_3));


fetch_unit	b2v_inst6(
	.clock(clock),
	.reset(SYNTHESIZED_WIRE_10),
	.branch_ctrl(SYNTHESIZED_WIRE_11),
	.jump_ctrl(SYNTHESIZED_WIRE_12),
	.pc(SYNTHESIZED_WIRE_13));


Instruction_rom_sample	b2v_inst7(
	.address(SYNTHESIZED_WIRE_13),
	.instruction(instruction));


mux_alu	b2v_inst8(
	.selector(SYNTHESIZED_WIRE_14),
	.immediate(instruction[3:0]),
	.register_2(SYNTHESIZED_WIRE_15),
	.mux_alu_out(SYNTHESIZED_WIRE_8));


endmodule