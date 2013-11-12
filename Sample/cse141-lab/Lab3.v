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
// CREATED ON	"Tue Nov 12 13:11:50 2013"

module Lab3(
	clock,
	mem_write_ctrl,
	mem_read_ctrl,
	alu_result
);


input	clock;
output	mem_write_ctrl;
output	mem_read_ctrl;
output	[7:0] alu_result;

wire	[8:0] instruction;
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
