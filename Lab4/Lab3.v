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
// CREATED		"Wed Dec 04 14:18:38 2013"

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
wire	[2:0] SYNTHESIZED_WIRE_1;
wire	[2:0] SYNTHESIZED_WIRE_2;
wire	[2:0] SYNTHESIZED_WIRE_74;
wire	[2:0] SYNTHESIZED_WIRE_75;
wire	[7:0] SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_76;
wire	[7:0] SYNTHESIZED_WIRE_77;
wire	[7:0] SYNTHESIZED_WIRE_78;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	[1:0] SYNTHESIZED_WIRE_13;
wire	[7:0] SYNTHESIZED_WIRE_79;
wire	SYNTHESIZED_WIRE_16;
wire	[7:0] SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_80;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	[3:0] SYNTHESIZED_WIRE_27;
wire	[2:0] SYNTHESIZED_WIRE_28;
wire	[7:0] SYNTHESIZED_WIRE_29;
wire	[7:0] SYNTHESIZED_WIRE_81;
wire	[7:0] SYNTHESIZED_WIRE_32;
wire	[2:0] SYNTHESIZED_WIRE_33;
wire	[3:0] SYNTHESIZED_WIRE_35;
wire	[2:0] SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;
wire	[7:0] SYNTHESIZED_WIRE_40;
wire	[7:0] SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_82;
wire	SYNTHESIZED_WIRE_44;
wire	SYNTHESIZED_WIRE_45;
wire	SYNTHESIZED_WIRE_46;
wire	SYNTHESIZED_WIRE_47;
wire	[7:0] SYNTHESIZED_WIRE_49;
wire	[7:0] SYNTHESIZED_WIRE_83;
wire	SYNTHESIZED_WIRE_52;
wire	[7:0] SYNTHESIZED_WIRE_53;
wire	[1:0] SYNTHESIZED_WIRE_55;
wire	[7:0] SYNTHESIZED_WIRE_56;
wire	[3:0] SYNTHESIZED_WIRE_57;
wire	SYNTHESIZED_WIRE_84;
wire	SYNTHESIZED_WIRE_85;
wire	SYNTHESIZED_WIRE_61;
wire	[7:0] SYNTHESIZED_WIRE_63;
wire	[7:0] SYNTHESIZED_WIRE_64;
wire	SYNTHESIZED_WIRE_65;
wire	[7:0] SYNTHESIZED_WIRE_66;
wire	SYNTHESIZED_WIRE_68;
wire	[7:0] SYNTHESIZED_WIRE_69;





control_unit	b2v_inst(
	.clock(clock),
	.instruction(ID_instruction),
	.swap_ctrl(SYNTHESIZED_WIRE_12),
	.alu_src(SYNTHESIZED_WIRE_20),
	.mem_write(SYNTHESIZED_WIRE_21),
	.mem_read(SYNTHESIZED_WIRE_22),
	.branch(SYNTHESIZED_WIRE_23),
	.reg_write(SYNTHESIZED_WIRE_24),
	.done_ctrl(SYNTHESIZED_WIRE_25),
	.jmp_ctrl(SYNTHESIZED_WIRE_26),
	.alu_func(SYNTHESIZED_WIRE_27),
	.alu_spec_func(SYNTHESIZED_WIRE_28),
	.reg_write_val(SYNTHESIZED_WIRE_33),
	.set_ctrl(SYNTHESIZED_WIRE_13));


forwarding_unit	b2v_inst1(
	.alu_src(SYNTHESIZED_WIRE_0),
	.id_mex_reg1(SYNTHESIZED_WIRE_1),
	.id_mex_reg2(SYNTHESIZED_WIRE_2),
	.id_mex_wrt_reg(SYNTHESIZED_WIRE_74),
	.mex_wb_wrt_reg(SYNTHESIZED_WIRE_75),
	.fwd_mux1(SYNTHESIZED_WIRE_52),
	.fwd_mux2(SYNTHESIZED_WIRE_55));


instruction_rom_prog1	b2v_inst10(
	.address(SYNTHESIZED_WIRE_5),
	.instruction(instruction));


single_port_ram_with_init	b2v_inst11(
	.writemem(SYNTHESIZED_WIRE_6),
	.readmem(SYNTHESIZED_WIRE_76),
	.clk(clock),
	.addr(SYNTHESIZED_WIRE_77),
	.data(SYNTHESIZED_WIRE_78),
	.q(SYNTHESIZED_WIRE_49));
	defparam	b2v_inst11.ADDR_WIDTH = 8;


register_file	b2v_inst12(
	.clock(clock),
	.write_ctrl(SYNTHESIZED_WIRE_10),
	.carry_out(SYNTHESIZED_WIRE_11),
	.swap_ctrl(SYNTHESIZED_WIRE_12),
	.read_reg1(ID_instruction[4:3]),
	.read_reg2(ID_instruction[2:0]),
	.set_ctrl(SYNTHESIZED_WIRE_13),
	.write_reg(SYNTHESIZED_WIRE_75),
	.write_val(SYNTHESIZED_WIRE_79),
	.branch_val(SYNTHESIZED_WIRE_29),
	.read_val1(SYNTHESIZED_WIRE_17),
	.read_val2(SYNTHESIZED_WIRE_66));


mux1_alu	b2v_inst13(
	.fwd_unit_selector1(SYNTHESIZED_WIRE_16),
	.id_mex_reg1(SYNTHESIZED_WIRE_17),
	.mex_wb_alu_res(SYNTHESIZED_WIRE_79),
	.mux_alu_out(SYNTHESIZED_WIRE_81));


pipe_id_mex	b2v_inst14(
	.clock(clock),
	.flush(SYNTHESIZED_WIRE_80),
	.ID_alu_src(SYNTHESIZED_WIRE_20),
	.ID_mem_write(SYNTHESIZED_WIRE_21),
	.ID_mem_read(SYNTHESIZED_WIRE_22),
	.ID_branch_ctrl(SYNTHESIZED_WIRE_23),
	.ID_reg_write(SYNTHESIZED_WIRE_24),
	.ID_done_ctrl(SYNTHESIZED_WIRE_25),
	.ID_jmp_ctrl(SYNTHESIZED_WIRE_26),
	.ID_alu_func(SYNTHESIZED_WIRE_27),
	.ID_alu_spec_func(SYNTHESIZED_WIRE_28),
	.ID_branch_val(SYNTHESIZED_WIRE_29),
	.ID_imm_val(ID_instruction[3:0]),
	.ID_jmp_val(SYNTHESIZED_WIRE_81),
	.ID_read_addr1(ID_instruction[4:3]),
	.ID_read_addr2(ID_instruction[2:0]),
	.ID_reg_val1(SYNTHESIZED_WIRE_81),
	.ID_reg_val2(SYNTHESIZED_WIRE_32),
	.ID_write_addr(SYNTHESIZED_WIRE_33),
	.MEX_branch_ctrl(SYNTHESIZED_WIRE_44),
	.MEX_done_ctrl(SYNTHESIZED_WIRE_61),
	.MEX_jmp_ctrl(SYNTHESIZED_WIRE_85),
	.MEX_reg_write(SYNTHESIZED_WIRE_46),
	.MEX_alu_src(SYNTHESIZED_WIRE_0),
	.MEX_mem_write(SYNTHESIZED_WIRE_6),
	.MEX_mem_read(SYNTHESIZED_WIRE_76),
	.MEX_alu_func(SYNTHESIZED_WIRE_35),
	.MEX_alu_spec_func(SYNTHESIZED_WIRE_38),
	.MEX_branch_val(SYNTHESIZED_WIRE_69),
	.MEX_imm_val(SYNTHESIZED_WIRE_57),
	.MEX_jmp_val(SYNTHESIZED_WIRE_64),
	.MEX_read_addr1(SYNTHESIZED_WIRE_1),
	.MEX_read_addr2(SYNTHESIZED_WIRE_2),
	.MEX_reg_val1(SYNTHESIZED_WIRE_53),
	.MEX_reg_val2(SYNTHESIZED_WIRE_56),
	.MEX_write_addr(SYNTHESIZED_WIRE_74));


regfile_forwarding_unit	b2v_inst15(
	.id_mex_reg1(ID_instruction[4:3]),
	.id_mex_reg2(ID_instruction[2:0]),
	.wb_wrt_reg(SYNTHESIZED_WIRE_75),
	.fwd_mux1(SYNTHESIZED_WIRE_16),
	.fwd_mux2(SYNTHESIZED_WIRE_65));


alu	b2v_inst19(
	.clock(clock),
	.func(SYNTHESIZED_WIRE_35),
	.reg1(SYNTHESIZED_WIRE_78),
	.reg2(SYNTHESIZED_WIRE_77),
	.spec_fun(SYNTHESIZED_WIRE_38),
	.br_out(SYNTHESIZED_WIRE_45),
	.carry_out(SYNTHESIZED_WIRE_47),
	.res(SYNTHESIZED_WIRE_83));


mux_reg_write_val	b2v_inst24(
	.selector(SYNTHESIZED_WIRE_39),
	.alu_result(SYNTHESIZED_WIRE_40),
	.mem_val(SYNTHESIZED_WIRE_41),
	.mux_reg_out(SYNTHESIZED_WIRE_79));


pipe_if_id	b2v_inst3(
	.clock(clock),
	.flush(SYNTHESIZED_WIRE_80),
	.stall(SYNTHESIZED_WIRE_82),
	.IF_instruction(instruction),
	.ID_instruction(ID_instruction));

assign	SYNTHESIZED_WIRE_84 = SYNTHESIZED_WIRE_44 & SYNTHESIZED_WIRE_45;


pipe_mex_wb	b2v_inst33(
	.clock(clock),
	.mex_reg_write(SYNTHESIZED_WIRE_46),
	.mex_carry_out(SYNTHESIZED_WIRE_47),
	.mex_mem_read(SYNTHESIZED_WIRE_76),
	.mex_data_val(SYNTHESIZED_WIRE_49),
	.mex_write_addr(SYNTHESIZED_WIRE_74),
	.mex_write_val(SYNTHESIZED_WIRE_83),
	.wb_reg_write(SYNTHESIZED_WIRE_10),
	.wb_carry_out(SYNTHESIZED_WIRE_11),
	.wb_mem_read(SYNTHESIZED_WIRE_39),
	.wb_data_val(SYNTHESIZED_WIRE_41),
	.wb_write_addr(SYNTHESIZED_WIRE_75),
	.wb_write_val(SYNTHESIZED_WIRE_40));


mux1_alu	b2v_inst4(
	.fwd_unit_selector1(SYNTHESIZED_WIRE_52),
	.id_mex_reg1(SYNTHESIZED_WIRE_53),
	.mex_wb_alu_res(SYNTHESIZED_WIRE_79),
	.mux_alu_out(SYNTHESIZED_WIRE_78));


mux2_alu	b2v_inst5(
	.fwd_unit_selector2(SYNTHESIZED_WIRE_55),
	.id_mex_reg2(SYNTHESIZED_WIRE_56),
	.instr_imm(SYNTHESIZED_WIRE_57),
	.mex_wb_alu_res(SYNTHESIZED_WIRE_79),
	.mux2_alu_out(SYNTHESIZED_WIRE_77));


fetch_unit	b2v_inst6(
	.clock(clock),
	.branch_ctrl(SYNTHESIZED_WIRE_84),
	.jump_ctrl(SYNTHESIZED_WIRE_85),
	.done_ctrl(SYNTHESIZED_WIRE_61),
	.stall(SYNTHESIZED_WIRE_82),
	.init_ctrl(init),
	.branch_val(SYNTHESIZED_WIRE_63),
	.jump_val(SYNTHESIZED_WIRE_64),
	.cycle_counter(cycle_count),
	.instruction_number(SYNTHESIZED_WIRE_5));


mux1_alu	b2v_inst7(
	.fwd_unit_selector1(SYNTHESIZED_WIRE_65),
	.id_mex_reg1(SYNTHESIZED_WIRE_66),
	.mex_wb_alu_res(SYNTHESIZED_WIRE_79),
	.mux_alu_out(SYNTHESIZED_WIRE_32));


mux_reg_write_val	b2v_inst8(
	.selector(SYNTHESIZED_WIRE_68),
	.alu_result(SYNTHESIZED_WIRE_69),
	.mem_val(SYNTHESIZED_WIRE_83),
	.mux_reg_out(SYNTHESIZED_WIRE_63));


hazard_unit	b2v_inst9(
	.clock(clock),
	.branch_ctrl(SYNTHESIZED_WIRE_84),
	.jump_ctrl(SYNTHESIZED_WIRE_85),
	.swap_ctrl(instruction[8:5]),
	.wb_write_reg(SYNTHESIZED_WIRE_74),
	.flush_ctrl(SYNTHESIZED_WIRE_80),
	.branch_flag(SYNTHESIZED_WIRE_68),
	.stall_ctrl(SYNTHESIZED_WIRE_82));


endmodule
