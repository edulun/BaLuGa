onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /test_sample/b2v_inst/clock
add wave -noupdate -group ctrl /test_sample/b2v_inst/instruction
add wave -noupdate -group ctrl /test_sample/b2v_inst/alu_func
add wave -noupdate -group ctrl /test_sample/b2v_inst/alu_spec_func
add wave -noupdate -group ctrl /test_sample/b2v_inst/reg_write_val
add wave -noupdate -group ctrl /test_sample/b2v_inst/set_ctrl
add wave -noupdate -group ctrl /test_sample/b2v_inst/alu_src
add wave -noupdate -group ctrl /test_sample/b2v_inst/mem_write
add wave -noupdate -group ctrl /test_sample/b2v_inst/mem_read
add wave -noupdate -group ctrl /test_sample/b2v_inst/branch
add wave -noupdate -group ctrl /test_sample/b2v_inst/reg_write
add wave -noupdate -group ctrl /test_sample/b2v_inst/swap_ctrl
add wave -noupdate -group ctrl /test_sample/b2v_inst/done_ctrl
add wave -noupdate -group ctrl /test_sample/b2v_inst/jmp_ctrl
add wave -noupdate -group ctrl /test_sample/b2v_inst/opcode
add wave -noupdate -group ctrl /test_sample/b2v_inst/spec_instr
add wave -noupdate -group alu /test_sample/b2v_inst4/reg1
add wave -noupdate -group alu /test_sample/b2v_inst4/reg2
add wave -noupdate -group alu /test_sample/b2v_inst4/func
add wave -noupdate -group alu /test_sample/b2v_inst4/spec_fun
add wave -noupdate -group alu /test_sample/b2v_inst4/res
add wave -noupdate -group alu /test_sample/b2v_inst4/carry_out
add wave -noupdate -group alu /test_sample/b2v_inst4/br_out
add wave -noupdate -group alu /test_sample/b2v_inst4/result
add wave -noupdate -group regfile /test_sample/b2v_inst5/write_ctrl
add wave -noupdate -group regfile /test_sample/b2v_inst5/carry_out
add wave -noupdate -group regfile /test_sample/b2v_inst5/swap_ctrl
add wave -noupdate -group regfile /test_sample/b2v_inst5/set_ctrl
add wave -noupdate -group regfile /test_sample/b2v_inst5/read_reg1
add wave -noupdate -group regfile /test_sample/b2v_inst5/read_reg2
add wave -noupdate -group regfile /test_sample/b2v_inst5/write_reg
add wave -noupdate -group regfile /test_sample/b2v_inst5/write_val
add wave -noupdate -group regfile /test_sample/b2v_inst5/read_val1
add wave -noupdate -group regfile /test_sample/b2v_inst5/read_val2
add wave -noupdate -group regfile /test_sample/b2v_inst5/branch_val
add wave -noupdate -group regfile /test_sample/b2v_inst5/zero
add wave -noupdate -group regfile /test_sample/b2v_inst5/imm
add wave -noupdate -group regfile /test_sample/b2v_inst5/t1
add wave -noupdate -group regfile /test_sample/b2v_inst5/t2
add wave -noupdate -group regfile /test_sample/b2v_inst5/s1
add wave -noupdate -group regfile /test_sample/b2v_inst5/s2
add wave -noupdate -group regfile /test_sample/b2v_inst5/s3
add wave -noupdate -group regfile /test_sample/b2v_inst5/branch
add wave -noupdate -expand -group mux /test_sample/b2v_inst8/register_2
add wave -noupdate -expand -group mux /test_sample/b2v_inst8/immediate
add wave -noupdate -expand -group mux /test_sample/b2v_inst8/selector
add wave -noupdate -expand -group mux /test_sample/b2v_inst8/mux_alu_out
add wave -noupdate -expand -group mux /test_sample/b2v_inst8/out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 222
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
WaveRestoreZoom {0 ps} {105 ps}
