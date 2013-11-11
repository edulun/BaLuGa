// Copyright (C) 1991-2009 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II"
// VERSION		"Version 9.0 Build 235 06/17/2009 Service Pack 2 SJ Web Edition"
// CREATED ON	"Sun Nov 10 20:02:16 2013"

module control_unit_bench_schematic(
	clock,
	instr,
	alu_mux_ctrl,
	mem_write,
	mem_read,
	branch,
	reg_write,
	swap_ctrl,
	done_ctrl,
	jump_ctrl,
	alu_func_ctrl,
	alu_spec_func_ctrl,
	reg_to_write
);


input	clock;
input	[8:0] instr;
output	alu_mux_ctrl;
output	mem_write;
output	mem_read;
output	branch;
output	reg_write;
output	swap_ctrl;
output	done_ctrl;
output	jump_ctrl;
output	[3:0] alu_func_ctrl;
output	[2:0] alu_spec_func_ctrl;
output	[2:0] reg_to_write;






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
