onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix decimal /test_sample/b2v_inst6/pc
add wave -noupdate -group control_unit /test_sample/b2v_inst/clock
add wave -noupdate -group control_unit /test_sample/b2v_inst/instruction
add wave -noupdate -group control_unit /test_sample/b2v_inst/swap_ctrl
add wave -noupdate -group control_unit /test_sample/b2v_inst/set_ctrl
add wave -noupdate -group control_unit /test_sample/b2v_inst/alu_func
add wave -noupdate -group control_unit /test_sample/b2v_inst/alu_spec_func
add wave -noupdate -group control_unit /test_sample/b2v_inst/reg_write_val
add wave -noupdate -group control_unit /test_sample/b2v_inst/alu_src
add wave -noupdate -group control_unit /test_sample/b2v_inst/mem_write
add wave -noupdate -group control_unit /test_sample/b2v_inst/mem_read
add wave -noupdate -group control_unit /test_sample/b2v_inst/branch
add wave -noupdate -group control_unit /test_sample/b2v_inst/reg_write
add wave -noupdate -group control_unit /test_sample/b2v_inst/done_ctrl
add wave -noupdate -group control_unit /test_sample/b2v_inst/jmp_ctrl
add wave -noupdate -group control_unit /test_sample/b2v_inst/opcode
add wave -noupdate -group control_unit /test_sample/b2v_inst/spec_instr
add wave -noupdate -group control_unit /test_sample/b2v_inst/clock
add wave -noupdate -group control_unit /test_sample/b2v_inst/instruction
add wave -noupdate -group control_unit /test_sample/b2v_inst/swap_ctrl
add wave -noupdate -group control_unit /test_sample/b2v_inst/set_ctrl
add wave -noupdate -group control_unit /test_sample/b2v_inst/alu_func
add wave -noupdate -group control_unit /test_sample/b2v_inst/alu_spec_func
add wave -noupdate -group control_unit /test_sample/b2v_inst/reg_write_val
add wave -noupdate -group control_unit /test_sample/b2v_inst/alu_src
add wave -noupdate -group control_unit /test_sample/b2v_inst/mem_write
add wave -noupdate -group control_unit /test_sample/b2v_inst/mem_read
add wave -noupdate -group control_unit /test_sample/b2v_inst/branch
add wave -noupdate -group control_unit /test_sample/b2v_inst/reg_write
add wave -noupdate -group control_unit /test_sample/b2v_inst/done_ctrl
add wave -noupdate -group control_unit /test_sample/b2v_inst/jmp_ctrl
add wave -noupdate -group control_unit /test_sample/b2v_inst/opcode
add wave -noupdate -group control_unit /test_sample/b2v_inst/spec_instr
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/clock
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/write_ctrl
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/write_reg
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/write_val
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/carry_out
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/read_reg1
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/read_reg2
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/swap_ctrl
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/set_ctrl
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/branch_val
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/read_val1
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/read_val2
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/zero
add wave -noupdate -expand -group registerfile -radix unsigned /test_sample/b2v_inst12/t1
add wave -noupdate -expand -group registerfile -radix unsigned /test_sample/b2v_inst12/imm
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/t2
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/s1
add wave -noupdate -expand -group registerfile -radix unsigned /test_sample/b2v_inst12/s2
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/s3
add wave -noupdate -expand -group registerfile -radix decimal /test_sample/b2v_inst12/branch
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/clock
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/write_ctrl
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/write_reg
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/write_val
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/carry_out
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/read_reg1
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/read_reg2
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/swap_ctrl
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/set_ctrl
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/branch_val
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/read_val1
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/read_val2
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/zero
add wave -noupdate -expand -group registerfile -radix unsigned /test_sample/b2v_inst12/t1
add wave -noupdate -expand -group registerfile -radix unsigned /test_sample/b2v_inst12/imm
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/t2
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/s1
add wave -noupdate -expand -group registerfile -radix unsigned /test_sample/b2v_inst12/s2
add wave -noupdate -expand -group registerfile /test_sample/b2v_inst12/s3
add wave -noupdate -expand -group registerfile -radix decimal /test_sample/b2v_inst12/branch
add wave -noupdate -group alu /test_sample/b2v_inst19/clock
add wave -noupdate -group alu /test_sample/b2v_inst19/reg1
add wave -noupdate -group alu /test_sample/b2v_inst19/reg2
add wave -noupdate -group alu /test_sample/b2v_inst19/func
add wave -noupdate -group alu /test_sample/b2v_inst19/spec_fun
add wave -noupdate -group alu /test_sample/b2v_inst19/br_out
add wave -noupdate -group alu /test_sample/b2v_inst19/res
add wave -noupdate -group alu /test_sample/b2v_inst19/carry_out
add wave -noupdate -group alu /test_sample/b2v_inst19/result
add wave -noupdate -group alu /test_sample/b2v_inst19/clock
add wave -noupdate -group alu /test_sample/b2v_inst19/reg1
add wave -noupdate -group alu /test_sample/b2v_inst19/reg2
add wave -noupdate -group alu /test_sample/b2v_inst19/func
add wave -noupdate -group alu /test_sample/b2v_inst19/spec_fun
add wave -noupdate -group alu /test_sample/b2v_inst19/br_out
add wave -noupdate -group alu /test_sample/b2v_inst19/res
add wave -noupdate -group alu /test_sample/b2v_inst19/carry_out
add wave -noupdate -group alu /test_sample/b2v_inst19/result
add wave -noupdate -group if_id /test_sample/b2v_inst3/clock
add wave -noupdate -group if_id /test_sample/b2v_inst3/flush
add wave -noupdate -group if_id /test_sample/b2v_inst3/stall
add wave -noupdate -group if_id /test_sample/b2v_inst3/IF_instruction
add wave -noupdate -group if_id /test_sample/b2v_inst3/ID_instruction
add wave -noupdate -group if_id /test_sample/b2v_inst3/instruction
add wave -noupdate -group if_id /test_sample/b2v_inst3/clock
add wave -noupdate -group if_id /test_sample/b2v_inst3/flush
add wave -noupdate -group if_id /test_sample/b2v_inst3/stall
add wave -noupdate -group if_id /test_sample/b2v_inst3/IF_instruction
add wave -noupdate -group if_id /test_sample/b2v_inst3/ID_instruction
add wave -noupdate -group if_id /test_sample/b2v_inst3/instruction
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/clock
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/mex_reg_write
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/mex_write_addr
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/mex_write_val
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/mex_carry_out
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/mex_data_val
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/mex_mem_read
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/wb_reg_write
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/wb_write_addr
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/wb_carry_out
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/wb_mem_read
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/wb_write_val
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/wb_data_val
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/write_val
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/write_addr
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/data_val
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/mem_read
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/carry_out
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/clock
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/mex_reg_write
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/mex_write_addr
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/mex_write_val
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/mex_carry_out
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/mex_data_val
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/mex_mem_read
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/wb_reg_write
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/wb_write_addr
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/wb_carry_out
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/wb_mem_read
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/wb_write_val
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/wb_data_val
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/write_val
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/write_addr
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/data_val
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/mem_read
add wave -noupdate -group mex_wb /test_sample/b2v_inst33/carry_out
add wave -noupdate -group mux1_alu /test_sample/b2v_inst4/mex_wb_alu_res
add wave -noupdate -group mux1_alu /test_sample/b2v_inst4/fwd_unit_selector1
add wave -noupdate -group mux1_alu /test_sample/b2v_inst4/id_mex_reg1
add wave -noupdate -group mux1_alu /test_sample/b2v_inst4/mux_alu_out
add wave -noupdate -group mux1_alu /test_sample/b2v_inst4/out
add wave -noupdate -group mux1_alu /test_sample/b2v_inst4/mex_wb_alu_res
add wave -noupdate -group mux1_alu /test_sample/b2v_inst4/fwd_unit_selector1
add wave -noupdate -group mux1_alu /test_sample/b2v_inst4/id_mex_reg1
add wave -noupdate -group mux1_alu /test_sample/b2v_inst4/mux_alu_out
add wave -noupdate -group mux1_alu /test_sample/b2v_inst4/out
add wave -noupdate -group mux2_alu /test_sample/b2v_inst5/mex_wb_alu_res
add wave -noupdate -group mux2_alu /test_sample/b2v_inst5/id_mex_reg2
add wave -noupdate -group mux2_alu /test_sample/b2v_inst5/instr_imm
add wave -noupdate -group mux2_alu /test_sample/b2v_inst5/fwd_unit_selector2
add wave -noupdate -group mux2_alu /test_sample/b2v_inst5/mux2_alu_out
add wave -noupdate -group mux2_alu /test_sample/b2v_inst5/out
add wave -noupdate -group mux2_alu /test_sample/b2v_inst5/mex_wb_alu_res
add wave -noupdate -group mux2_alu /test_sample/b2v_inst5/id_mex_reg2
add wave -noupdate -group mux2_alu /test_sample/b2v_inst5/instr_imm
add wave -noupdate -group mux2_alu /test_sample/b2v_inst5/fwd_unit_selector2
add wave -noupdate -group mux2_alu /test_sample/b2v_inst5/mux2_alu_out
add wave -noupdate -group mux2_alu /test_sample/b2v_inst5/out
add wave -noupdate -group {forwarding unit} /test_sample/b2v_inst1/mex_wb_wrt_reg
add wave -noupdate -group {forwarding unit} /test_sample/b2v_inst1/id_mex_reg1
add wave -noupdate -group {forwarding unit} /test_sample/b2v_inst1/id_mex_reg2
add wave -noupdate -group {forwarding unit} /test_sample/b2v_inst1/id_mex_wrt_reg
add wave -noupdate -group {forwarding unit} /test_sample/b2v_inst1/alu_src
add wave -noupdate -group {forwarding unit} /test_sample/b2v_inst1/fwd_mux1
add wave -noupdate -group {forwarding unit} /test_sample/b2v_inst1/fwd_mux2
add wave -noupdate -group {forwarding unit} /test_sample/b2v_inst1/out1
add wave -noupdate -group {forwarding unit} /test_sample/b2v_inst1/out2
add wave -noupdate -group {forwarding unit} /test_sample/b2v_inst1/mex_wb_wrt_reg
add wave -noupdate -group {forwarding unit} /test_sample/b2v_inst1/id_mex_reg1
add wave -noupdate -group {forwarding unit} /test_sample/b2v_inst1/id_mex_reg2
add wave -noupdate -group {forwarding unit} /test_sample/b2v_inst1/id_mex_wrt_reg
add wave -noupdate -group {forwarding unit} /test_sample/b2v_inst1/alu_src
add wave -noupdate -group {forwarding unit} /test_sample/b2v_inst1/fwd_mux1
add wave -noupdate -group {forwarding unit} /test_sample/b2v_inst1/fwd_mux2
add wave -noupdate -group {forwarding unit} /test_sample/b2v_inst1/out1
add wave -noupdate -group {forwarding unit} /test_sample/b2v_inst1/out2
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/clock
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/flush
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_branch_val
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_jmp_val
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_reg_val1
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_reg_val2
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_imm_val
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_read_addr1
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_read_addr2
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_alu_func
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_alu_spec_func
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_write_addr
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_alu_src
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_mem_write
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_mem_read
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_branch_ctrl
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_reg_write
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_done_ctrl
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_jmp_ctrl
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_branch_ctrl
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_done_ctrl
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_jmp_ctrl
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_reg_write
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_branch_val
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_jmp_val
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_write_addr
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_read_addr1
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_read_addr2
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_alu_src
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_reg_val1
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_reg_val2
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_imm_val
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_alu_func
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_alu_spec_func
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_mem_write
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_mem_read
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/reg_val1
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/reg_val2
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/branch_val
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/jmp_val
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/imm_val
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/read_addr1
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/read_addr2
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/write_addr
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/alu_func
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/alu_spec_func
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/alu_src
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/mem_write
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/mem_read
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/reg_write
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/branch_ctrl
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/done_ctrl
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/jmp_ctrl
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/clock
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/flush
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_branch_val
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_jmp_val
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_reg_val1
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_reg_val2
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_imm_val
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_read_addr1
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_read_addr2
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_alu_func
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_alu_spec_func
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_write_addr
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_alu_src
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_mem_write
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_mem_read
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_branch_ctrl
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_reg_write
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_done_ctrl
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/ID_jmp_ctrl
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_branch_ctrl
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_done_ctrl
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_jmp_ctrl
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_reg_write
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_branch_val
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_jmp_val
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_write_addr
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_read_addr1
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_read_addr2
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_alu_src
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_reg_val1
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_reg_val2
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_imm_val
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_alu_func
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_alu_spec_func
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_mem_write
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/MEX_mem_read
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/reg_val1
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/reg_val2
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/branch_val
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/jmp_val
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/imm_val
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/read_addr1
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/read_addr2
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/write_addr
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/alu_func
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/alu_spec_func
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/alu_src
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/mem_write
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/mem_read
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/reg_write
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/branch_ctrl
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/done_ctrl
add wave -noupdate -group {id_mex
} /test_sample/b2v_inst14/jmp_ctrl
add wave -noupdate -group {hazard
} /test_sample/b2v_inst9/clock
add wave -noupdate -group {hazard
} /test_sample/b2v_inst9/wb_write_reg
add wave -noupdate -group {hazard
} /test_sample/b2v_inst9/swap_ctrl
add wave -noupdate -group {hazard
} /test_sample/b2v_inst9/branch_ctrl
add wave -noupdate -group {hazard
} /test_sample/b2v_inst9/flush_ctrl
add wave -noupdate -group {hazard
} /test_sample/b2v_inst9/branch_flag
add wave -noupdate -group {hazard
} /test_sample/b2v_inst9/stall_ctrl
add wave -noupdate -group {hazard
} /test_sample/b2v_inst9/cycle_count
add wave -noupdate -group {hazard
} /test_sample/b2v_inst9/clock
add wave -noupdate -group {hazard
} /test_sample/b2v_inst9/wb_write_reg
add wave -noupdate -group {hazard
} /test_sample/b2v_inst9/swap_ctrl
add wave -noupdate -group {hazard
} /test_sample/b2v_inst9/branch_ctrl
add wave -noupdate -group {hazard
} /test_sample/b2v_inst9/flush_ctrl
add wave -noupdate -group {hazard
} /test_sample/b2v_inst9/branch_flag
add wave -noupdate -group {hazard
} /test_sample/b2v_inst9/stall_ctrl
add wave -noupdate -group {hazard
} /test_sample/b2v_inst9/cycle_count
add wave -noupdate -group regfile_forwarding /test_sample/b2v_inst15/id_mex_reg1
add wave -noupdate -group regfile_forwarding /test_sample/b2v_inst15/id_mex_reg2
add wave -noupdate -group regfile_forwarding /test_sample/b2v_inst15/wb_wrt_reg
add wave -noupdate -group regfile_forwarding /test_sample/b2v_inst15/fwd_mux1
add wave -noupdate -group regfile_forwarding /test_sample/b2v_inst15/fwd_mux2
add wave -noupdate -group regfile_forwarding /test_sample/b2v_inst15/out1
add wave -noupdate -group regfile_forwarding /test_sample/b2v_inst15/out2
add wave -noupdate -group regfile_forwarding /test_sample/b2v_inst15/id_mex_reg1
add wave -noupdate -group regfile_forwarding /test_sample/b2v_inst15/id_mex_reg2
add wave -noupdate -group regfile_forwarding /test_sample/b2v_inst15/wb_wrt_reg
add wave -noupdate -group regfile_forwarding /test_sample/b2v_inst15/fwd_mux1
add wave -noupdate -group regfile_forwarding /test_sample/b2v_inst15/fwd_mux2
add wave -noupdate -group regfile_forwarding /test_sample/b2v_inst15/out1
add wave -noupdate -group regfile_forwarding /test_sample/b2v_inst15/out2
add wave -noupdate -group fetch /test_sample/b2v_inst6/clock
add wave -noupdate -group fetch /test_sample/b2v_inst6/branch_ctrl
add wave -noupdate -group fetch /test_sample/b2v_inst6/jump_ctrl
add wave -noupdate -group fetch /test_sample/b2v_inst6/done_ctrl
add wave -noupdate -group fetch /test_sample/b2v_inst6/stall
add wave -noupdate -group fetch /test_sample/b2v_inst6/init_ctrl
add wave -noupdate -group fetch /test_sample/b2v_inst6/jump_val
add wave -noupdate -group fetch -radix decimal /test_sample/b2v_inst6/branch_val
add wave -noupdate -group fetch /test_sample/b2v_inst6/instruction_number
add wave -noupdate -group fetch /test_sample/b2v_inst6/cycle_counter
add wave -noupdate -group fetch -radix decimal /test_sample/b2v_inst6/bt_pc
add wave -noupdate -group fetch -radix decimal /test_sample/b2v_inst6/branch_value
add wave -noupdate -group fetch /test_sample/b2v_inst6/cycles
add wave -noupdate -group fetch /test_sample/b2v_inst6/clock
add wave -noupdate -group fetch /test_sample/b2v_inst6/branch_ctrl
add wave -noupdate -group fetch /test_sample/b2v_inst6/jump_ctrl
add wave -noupdate -group fetch /test_sample/b2v_inst6/done_ctrl
add wave -noupdate -group fetch /test_sample/b2v_inst6/stall
add wave -noupdate -group fetch /test_sample/b2v_inst6/init_ctrl
add wave -noupdate -group fetch /test_sample/b2v_inst6/jump_val
add wave -noupdate -group fetch -radix decimal /test_sample/b2v_inst6/branch_val
add wave -noupdate -group fetch /test_sample/b2v_inst6/instruction_number
add wave -noupdate -group fetch /test_sample/b2v_inst6/cycle_counter
add wave -noupdate -group fetch -radix decimal /test_sample/b2v_inst6/bt_pc
add wave -noupdate -group fetch -radix decimal /test_sample/b2v_inst6/branch_value
add wave -noupdate -group fetch /test_sample/b2v_inst6/cycles
add wave -noupdate -radix decimal /test_sample/b2v_inst6/pc
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {12392 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 396
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {12365 ps} {12413 ps}
