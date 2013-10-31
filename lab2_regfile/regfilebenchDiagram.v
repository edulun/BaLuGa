// Copyright (C) 1991-2012 Altera Corporation
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
// VERSION		"Version 12.0 Build 178 05/31/2012 SJ Full Version"
// CREATED		"Wed Oct 30 23:06:29 2013"

module regfilebenchDiagram(
	clock,
	write_ctrl,
	swap_ctrl,
	read_reg1,
	read_reg2,
	write_reg,
	write_val,
	reg_val1,
	reg_val2
);


input wire	clock;
input wire	write_ctrl;
input wire	swap_ctrl;
input wire	[1:0] read_reg1;
input wire	[2:0] read_reg2;
input wire	[2:0] write_reg;
input wire	[7:0] write_val;
output wire	[7:0] reg_val1;
output wire	[7:0] reg_val2;






register_file	b2v_inst(
	.clock(clock),
	.write_ctrl(write_ctrl),
	.swap_ctrl(swap_ctrl),
	.read_reg1(read_reg1),
	.read_reg2(read_reg2),
	.write_reg(write_reg),
	.write_val(write_val),
	.reg_val1(reg_val1),
	.reg_val2(reg_val2));


endmodule
