// Copyright (C) 1991-2013 Altera Corporation
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

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
// CREATED		"Mon Dec 02 17:56:44 2013"

module Lab3(
	clock,
	init,
	cycle_count
);


input wire	clock;
input wire	init;
output wire	[16:0] cycle_count;

wire	[8:0] ID_instruction;
wire	[8:0] instruction;
wire	SYNTHESIZED_WIRE_0;
wire	[2:0] SYNTHESIZED_WIRE_62;
wire	[2:0] SYNTHESIZED_WIRE_2;
wire	[2:0] SYNTHESIZED_WIRE_3;
wire	[2:0] SYNTHESIZED_WIRE_63;
wire	[7:0] SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_64;
wire	[7:0] SYNTHESIZED_WIRE_65;
wire	[7:0] SYNTHESIZED_WIRE_66;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	[1:0] SYNTHESIZED_WIRE_13;
wire	[7:0] SYNTHESIZED_WIRE_67;
wire	[3:0] SYNTHESIZED_WIRE_16;
wire	[2:0] SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	[7:0] SYNTHESIZED_WIRE_21;
wire	[7:0] SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_68;
wire	SYNTHESIZED_WIRE_69;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	[7:0] SYNTHESIZED_WIRE_30;
wire	[7:0] SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_70;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_41;
wire	[3:0] SYNTHESIZED_WIRE_42;
wire	[2:0] SYNTHESIZED_WIRE_43;
wire	[7:0] SYNTHESIZED_WIRE_44;
wire	[7:0] SYNTHESIZED_WIRE_71;
wire	[7:0] SYNTHESIZED_WIRE_47;
wire	[2:0] SYNTHESIZED_WIRE_48;
wire	SYNTHESIZED_WIRE_49;
wire	[7:0] SYNTHESIZED_WIRE_50;
wire	[1:0] SYNTHESIZED_WIRE_52;
wire	[7:0] SYNTHESIZED_WIRE_53;
wire	[3:0] SYNTHESIZED_WIRE_54;
wire	SYNTHESIZED_WIRE_57;
wire	SYNTHESIZED_WIRE_58;
wire	[7:0] SYNTHESIZED_WIRE_60;
wire	[7:0] SYNTHESIZED_WIRE_61;





control_unit	b2v_inst(
	.clock(clock),
	.instruction(ID_instruction),
	.swap_ctrl(SYNTHESIZED_WIRE_12),
	.alu_src(SYNTHESIZED_WIRE_35),
	.mem_write(SYNTHESIZED_WIRE_36),
	.mem_read(SYNTHESIZED_WIRE_37),
	.branch(SYNTHESIZED_WIRE_38),
	.reg_write(SYNTHESIZED_WIRE_39),
	.done_ctrl(SYNTHESIZED_WIRE_40),
	.jmp_ctrl(SYNTHESIZED_WIRE_41),
	.alu_func(SYNTHESIZED_WIRE_42),
	.alu_spec_func(SYNTHESIZED_WIRE_43),
	.reg_write_val(SYNTHESIZED_WIRE_48),
	.set_ctrl(SYNTHESIZED_WIRE_13));


forwarding_unit	b2v_inst1(
	.alu_src(SYNTHESIZED_WIRE_0),
	.id_mex_reg1(SYNTHESIZED_WIRE_62),
	.id_mex_reg2(SYNTHESIZED_WIRE_2),
	.id_mex_wrt_reg(SYNTHESIZED_WIRE_3),
	.mex_wb_wrt_reg(SYNTHESIZED_WIRE_63),
	.fwd_mux1(SYNTHESIZED_WIRE_49),
	.fwd_mux2(SYNTHESIZED_WIRE_52));


instruction_rom_prog1	b2v_inst10(
	.address(SYNTHESIZED_WIRE_5),
	.instruction(instruction));


single_port_ram_with_init	b2v_inst11(
	.writemem(SYNTHESIZED_WIRE_6),
	.readmem(SYNTHESIZED_WIRE_64),
	.clk(clock),
	.addr(SYNTHESIZED_WIRE_65),
	.data(SYNTHESIZED_WIRE_66),
	.q(SYNTHESIZED_WIRE_30));
	defparam	b2v_inst11.ADDR_WIDTH = 8;


register_file	b2v_inst12(
	.clock(clock),
	.write_ctrl(SYNTHESIZED_WIRE_10),
	.carry_out(SYNTHESIZED_WIRE_11),
	.swap_ctrl(SYNTHESIZED_WIRE_12),
	.read_reg1(ID_instruction[4:3]),
	.read_reg2(ID_instruction[2:0]),
	.set_ctrl(SYNTHESIZED_WIRE_13),
	.write_reg(SYNTHESIZED_WIRE_62),
	.write_val(SYNTHESIZED_WIRE_67),
	.branch_val(SYNTHESIZED_WIRE_44),
	.read_val1(SYNTHESIZED_WIRE_71),
	.read_val2(SYNTHESIZED_WIRE_47));


alu	b2v_inst19(
	.clock(clock),
	.func(SYNTHESIZED_WIRE_16),
	.reg1(SYNTHESIZED_WIRE_66),
	.reg2(SYNTHESIZED_WIRE_65),
	.spec_fun(SYNTHESIZED_WIRE_19),
	.br_out(SYNTHESIZED_WIRE_26),
	.carry_out(SYNTHESIZED_WIRE_28),
	.res(SYNTHESIZED_WIRE_32));


mux_reg_write_val	b2v_inst24(
	.selector(SYNTHESIZED_WIRE_20),
	.alu_result(SYNTHESIZED_WIRE_21),
	.mem_val(SYNTHESIZED_WIRE_22),
	.mux_reg_out(SYNTHESIZED_WIRE_67));


pipe_if_id	b2v_inst3(
	.clock(clock),
	.flush(SYNTHESIZED_WIRE_68),
	.stall(SYNTHESIZED_WIRE_69),
	.IF_instruction(instruction),
	.ID_instruction(ID_instruction));

assign	SYNTHESIZED_WIRE_70 = SYNTHESIZED_WIRE_25 & SYNTHESIZED_WIRE_26;


pipe_mex_wb	b2v_inst33(
	.clock(clock),
	.mex_reg_write(SYNTHESIZED_WIRE_27),
	.mex_carry_out(SYNTHESIZED_WIRE_28),
	.mex_mem_read(SYNTHESIZED_WIRE_64),
	.mex_data_val(SYNTHESIZED_WIRE_30),
	.mex_write_addr(SYNTHESIZED_WIRE_63),
	.mex_write_val(SYNTHESIZED_WIRE_32),
	.wb_reg_write(SYNTHESIZED_WIRE_10),
	.wb_carry_out(SYNTHESIZED_WIRE_11),
	.wb_mem_read(SYNTHESIZED_WIRE_20),
	.wb_data_val(SYNTHESIZED_WIRE_22),
	.wb_write_addr(SYNTHESIZED_WIRE_62),
	.wb_write_val(SYNTHESIZED_WIRE_21));


hazard_unit	b2v_inst35(
	.clock(clock),
	.branch_ctrl(SYNTHESIZED_WIRE_70),
	.swap_ctrl(instruction[8:5]),
	.flush_ctrl(SYNTHESIZED_WIRE_68),
	.stall_ctrl(SYNTHESIZED_WIRE_69));


pipe_id_mex	b2v_inst37(
	.clock(clock),
	.flush(SYNTHESIZED_WIRE_68),
	.ID_alu_src(SYNTHESIZED_WIRE_35),
	.ID_mem_write(SYNTHESIZED_WIRE_36),
	.ID_mem_read(SYNTHESIZED_WIRE_37),
	.ID_branch_ctrl(SYNTHESIZED_WIRE_38),
	.ID_reg_write(SYNTHESIZED_WIRE_39),
	.ID_done_ctrl(SYNTHESIZED_WIRE_40),
	.ID_jmp_ctrl(SYNTHESIZED_WIRE_41),
	.ID_alu_func(SYNTHESIZED_WIRE_42),
	.ID_alu_spec_func(SYNTHESIZED_WIRE_43),
	.ID_branch_val(SYNTHESIZED_WIRE_44),
	.ID_imm_val(ID_instruction[3:0]),
	.ID_jmp_val(SYNTHESIZED_WIRE_71),
	.ID_read_addr1(ID_instruction[4:3]),
	.ID_read_addr2(ID_instruction[2:0]),
	.ID_reg_val1(SYNTHESIZED_WIRE_71),
	.ID_reg_val2(SYNTHESIZED_WIRE_47),
	.ID_write_addr(SYNTHESIZED_WIRE_48),
	.MEX_branch_ctrl(SYNTHESIZED_WIRE_25),
	.MEX_done_ctrl(SYNTHESIZED_WIRE_58),
	.MEX_jmp_ctrl(SYNTHESIZED_WIRE_57),
	.MEX_reg_write(SYNTHESIZED_WIRE_27),
	.MEX_alu_src(SYNTHESIZED_WIRE_0),
	.MEX_mem_write(SYNTHESIZED_WIRE_6),
	.MEX_mem_read(SYNTHESIZED_WIRE_64),
	.MEX_alu_func(SYNTHESIZED_WIRE_16),
	.MEX_alu_spec_func(SYNTHESIZED_WIRE_19),
	.MEX_branch_val(SYNTHESIZED_WIRE_60),
	.MEX_imm_val(SYNTHESIZED_WIRE_54),
	.MEX_jmp_val(SYNTHESIZED_WIRE_61),
	.MEX_read_addr1(SYNTHESIZED_WIRE_2),
	.MEX_read_addr2(SYNTHESIZED_WIRE_3),
	.MEX_reg_val1(SYNTHESIZED_WIRE_50),
	.MEX_reg_val2(SYNTHESIZED_WIRE_53),
	.MEX_write_addr(SYNTHESIZED_WIRE_63));


mux1_alu	b2v_inst4(
	.fwd_unit_selector1(SYNTHESIZED_WIRE_49),
	.id_mex_reg1(SYNTHESIZED_WIRE_50),
	.mex_wb_alu_res(SYNTHESIZED_WIRE_67),
	.mux_alu_out(SYNTHESIZED_WIRE_66));


mux2_alu	b2v_inst5(
	.fwd_unit_selector2(SYNTHESIZED_WIRE_52),
	.id_mex_reg2(SYNTHESIZED_WIRE_53),
	.instr_imm(SYNTHESIZED_WIRE_54),
	.mex_wb_alu_res(SYNTHESIZED_WIRE_67),
	.mux2_alu_out(SYNTHESIZED_WIRE_65));


fetch_unit	b2v_inst6(
	.clock(clock),
	.branch_ctrl(SYNTHESIZED_WIRE_70),
	.jump_ctrl(SYNTHESIZED_WIRE_57),
	.done_ctrl(SYNTHESIZED_WIRE_58),
	.stall(SYNTHESIZED_WIRE_69),
	.init_ctrl(init),
	.branch_val(SYNTHESIZED_WIRE_60),
	.jump_val(SYNTHESIZED_WIRE_61),
	.cycle_counter(cycle_count),
	.instruction_number(SYNTHESIZED_WIRE_5));


endmodule
