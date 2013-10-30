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
// CREATED ON	"Tue Oct 29 14:53:55 2013"

module alu_bench_schematic(
	clock,
	function_control,
	register_one,
	register_two,
	spec_function,
	branch_out,
	result
);


input	clock;
input	[3:0] function_control;
input	[7:0] register_one;
input	[7:0] register_two;
input	[2:0] spec_function;
output	branch_out;
output	[7:0] result;






alu	b2v_inst(
	.clock(clock),
	.func(function_control),
	.reg1(register_one),
	.reg2(register_two),
	.spec_fun(spec_function),
	.br_out(branch_out),
	.res(result));


endmodule
