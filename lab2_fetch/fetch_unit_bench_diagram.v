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
// CREATED		"Thu Oct 31 13:46:21 2013"

module fetch_unit_bench_diagram(
	clock,
	reset,
	branch_ctrl,
	branch_val,
	instruction_val
);


input wire	clock;
input wire	reset;
input wire	branch_ctrl;
input wire	[7:0] branch_val;
output wire	[8:0] instruction_val;






fetch_unit	b2v_inst(
	.clock(clock),
	.reset(reset),
	.branch_ctrl(branch_ctrl),
	.branch_val(branch_val),
	.instruction_val(instruction_val));


endmodule
