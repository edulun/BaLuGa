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
// CREATED ON	"Wed Nov 13 10:47:56 2013"

module Lab3(
	clock,
	init,
	mem_write_ctrl,
	mem_read_ctrl,
	alu_result,
	cycle_count,
	pc_out
);


input	clock;
input	init;
output	mem_write_ctrl;
output	mem_read_ctrl;
output	[7:0] alu_result;
output	[16:0] cycle_count;
output	[7:0] pc_out;

wire	[8:0] instruction;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	[3:0] SYNTHESIZED_WIRE_2;
wire	[7:0] SYNTHESIZED_WIRE_20;
wire	[7:0] SYNTHESIZED_WIRE_4;
wire	[2:0] SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	[1:0] SYNTHESIZED_WIRE_9;
wire	[2:0] SYNTHESIZED_WIRE_10;
wire	[7:0] SYNTHESIZED_WIRE_11;
wire	[7:0] SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	[7:0] SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	[7:0] SYNTHESIZED_WIRE_18;

assign	alu_result = SYNTHESIZED_WIRE_11;
assign	pc_out = SYNTHESIZED_WIRE_12;




control_unit	b2v_inst(
	.clock(clock),
	.instruction(instruction),
	.alu_src(SYNTHESIZED_WIRE_13),
	.mem_write(mem_write_ctrl),
	.mem_read(mem_read_ctrl),
	.branch(SYNTHESIZED_WIRE_0),
	.reg_write(SYNTHESIZED_WIRE_6),
	.swap_ctrl(SYNTHESIZED_WIRE_8),
	.done_ctrl(SYNTHESIZED_WIRE_17),
	.jmp_ctrl(SYNTHESIZED_WIRE_16),
	.alu_func(SYNTHESIZED_WIRE_2),
	.alu_spec_func(SYNTHESIZED_WIRE_5),
	.reg_write_val(SYNTHESIZED_WIRE_10),
	.set_ctrl(SYNTHESIZED_WIRE_9));

assign	SYNTHESIZED_WIRE_15 = SYNTHESIZED_WIRE_0 & SYNTHESIZED_WIRE_1;


alu	b2v_inst4(
	.clock(clock),
	.func(SYNTHESIZED_WIRE_2),
	.reg1(SYNTHESIZED_WIRE_20),
	.reg2(SYNTHESIZED_WIRE_4),
	.spec_fun(SYNTHESIZED_WIRE_5),
	.carry_out(SYNTHESIZED_WIRE_7),
	.br_out(SYNTHESIZED_WIRE_1),
	.res(SYNTHESIZED_WIRE_11));


register_file	b2v_inst5(
	.clock(clock),
	.write_ctrl(SYNTHESIZED_WIRE_6),
	.carry_out(SYNTHESIZED_WIRE_7),
	.swap_ctrl(SYNTHESIZED_WIRE_8),
	.read_reg1(instruction[4:3]),
	.read_reg2(instruction[2:0]),
	.set_ctrl(SYNTHESIZED_WIRE_9),
	.write_reg(SYNTHESIZED_WIRE_10),
	.write_val(SYNTHESIZED_WIRE_11),
	.branch_val(SYNTHESIZED_WIRE_18),
	.read_val1(SYNTHESIZED_WIRE_20),
	.read_val2(SYNTHESIZED_WIRE_14));


Instruction_rom_sample	b2v_inst7(
	.address(SYNTHESIZED_WIRE_12),
	.instruction(instruction));


mux_alu	b2v_inst8(
	.selector(SYNTHESIZED_WIRE_13),
	.immediate(instruction[3:0]),
	.register_2(SYNTHESIZED_WIRE_14),
	.mux_alu_out(SYNTHESIZED_WIRE_4));


fetch_unit	b2v_inst9(
	.clock(clock),
	.branch_ctrl(SYNTHESIZED_WIRE_15),
	.jump_ctrl(SYNTHESIZED_WIRE_16),
	.done_ctrl(SYNTHESIZED_WIRE_17),
	.init_ctrl(init),
	.branch_val(SYNTHESIZED_WIRE_18),
	.jump_val(SYNTHESIZED_WIRE_20),
	.cycle_counter(cycle_count),
	.instruction_number(SYNTHESIZED_WIRE_12));


endmodule
