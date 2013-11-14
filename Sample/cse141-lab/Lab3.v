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
// CREATED ON	"Thu Nov 14 14:35:54 2013"

module Lab3(
	clock,
	init,
	alu_result,
	cycle_count,
	pc_out
);


input	clock;
input	init;
output	[7:0] alu_result;
output	[16:0] cycle_count;
output	[7:0] pc_out;

wire	[8:0] instruction;
wire	mem_read;
wire	SYNTHESIZED_WIRE_0;
wire	[7:0] SYNTHESIZED_WIRE_25;
wire	[7:0] SYNTHESIZED_WIRE_26;
wire	[7:0] SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	[3:0] SYNTHESIZED_WIRE_6;
wire	[7:0] SYNTHESIZED_WIRE_8;
wire	[2:0] SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	[1:0] SYNTHESIZED_WIRE_13;
wire	[2:0] SYNTHESIZED_WIRE_14;
wire	[7:0] SYNTHESIZED_WIRE_15;
wire	[7:0] SYNTHESIZED_WIRE_16;
wire	[7:0] SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	[7:0] SYNTHESIZED_WIRE_23;

assign	alu_result = SYNTHESIZED_WIRE_16;
assign	pc_out = SYNTHESIZED_WIRE_3;




control_unit	b2v_inst(
	.clock(clock),
	.instruction(instruction),
	.alu_src(SYNTHESIZED_WIRE_18),
	.mem_write(SYNTHESIZED_WIRE_0),
	.mem_read(mem_read),
	.branch(SYNTHESIZED_WIRE_4),
	.reg_write(SYNTHESIZED_WIRE_10),
	.swap_ctrl(SYNTHESIZED_WIRE_12),
	.done_ctrl(SYNTHESIZED_WIRE_22),
	.jmp_ctrl(SYNTHESIZED_WIRE_21),
	.alu_func(SYNTHESIZED_WIRE_6),
	.alu_spec_func(SYNTHESIZED_WIRE_9),
	.reg_write_val(SYNTHESIZED_WIRE_14),
	.set_ctrl(SYNTHESIZED_WIRE_13));


single_port_ram_with_init	b2v_inst1(
	.writemem(SYNTHESIZED_WIRE_0),
	.readmem(mem_read),
	.clk(clock),
	.addr(SYNTHESIZED_WIRE_25),
	.data(SYNTHESIZED_WIRE_26),
	.q(SYNTHESIZED_WIRE_17));
	defparam	b2v_inst1.ADDR_WIDTH = 8;


instruction_rom_prog1	b2v_inst10(
	.address(SYNTHESIZED_WIRE_3),
	.instruction(instruction));

assign	SYNTHESIZED_WIRE_20 = SYNTHESIZED_WIRE_4 & SYNTHESIZED_WIRE_5;


alu	b2v_inst4(
	.clock(clock),
	.func(SYNTHESIZED_WIRE_6),
	.reg1(SYNTHESIZED_WIRE_26),
	.reg2(SYNTHESIZED_WIRE_8),
	.spec_fun(SYNTHESIZED_WIRE_9),
	.carry_out(SYNTHESIZED_WIRE_11),
	.br_out(SYNTHESIZED_WIRE_5),
	.res(SYNTHESIZED_WIRE_16));


register_file	b2v_inst5(
	.clock(clock),
	.write_ctrl(SYNTHESIZED_WIRE_10),
	.carry_out(SYNTHESIZED_WIRE_11),
	.swap_ctrl(SYNTHESIZED_WIRE_12),
	.read_reg1(instruction[4:3]),
	.read_reg2(instruction[2:0]),
	.set_ctrl(SYNTHESIZED_WIRE_13),
	.write_reg(SYNTHESIZED_WIRE_14),
	.write_val(SYNTHESIZED_WIRE_15),
	.branch_val(SYNTHESIZED_WIRE_23),
	.read_val1(SYNTHESIZED_WIRE_26),
	.read_val2(SYNTHESIZED_WIRE_25));


mux_reg_write_val	b2v_inst6(
	.selector(mem_read),
	.alu_result(SYNTHESIZED_WIRE_16),
	.mem_val(SYNTHESIZED_WIRE_17),
	.mux_reg_out(SYNTHESIZED_WIRE_15));


mux_alu	b2v_inst8(
	.selector(SYNTHESIZED_WIRE_18),
	.immediate(instruction[3:0]),
	.register_2(SYNTHESIZED_WIRE_25),
	.mux_alu_out(SYNTHESIZED_WIRE_8));


fetch_unit	b2v_inst9(
	.clock(clock),
	.branch_ctrl(SYNTHESIZED_WIRE_20),
	.jump_ctrl(SYNTHESIZED_WIRE_21),
	.done_ctrl(SYNTHESIZED_WIRE_22),
	.init_ctrl(init),
	.branch_val(SYNTHESIZED_WIRE_23),
	.jump_val(SYNTHESIZED_WIRE_26),
	.cycle_counter(cycle_count),
	.instruction_number(SYNTHESIZED_WIRE_3));


endmodule
