onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group regfile /test_sample/b2v_inst5/clock
add wave -noupdate -expand -group regfile /test_sample/b2v_inst5/write_ctrl
add wave -noupdate -expand -group regfile /test_sample/b2v_inst5/carry_out
add wave -noupdate -expand -group regfile /test_sample/b2v_inst5/swap_ctrl
add wave -noupdate -expand -group regfile /test_sample/b2v_inst5/set_ctrl
add wave -noupdate -expand -group regfile /test_sample/b2v_inst5/read_reg1
add wave -noupdate -expand -group regfile /test_sample/b2v_inst5/read_reg2
add wave -noupdate -expand -group regfile /test_sample/b2v_inst5/write_reg
add wave -noupdate -expand -group regfile /test_sample/b2v_inst5/write_val
add wave -noupdate -expand -group regfile /test_sample/b2v_inst5/read_val1
add wave -noupdate -expand -group regfile /test_sample/b2v_inst5/read_val2
add wave -noupdate -expand -group regfile /test_sample/b2v_inst5/branch_val
add wave -noupdate -expand -group regfile /test_sample/b2v_inst5/zero
add wave -noupdate -expand -group regfile /test_sample/b2v_inst5/imm
add wave -noupdate -expand -group regfile /test_sample/b2v_inst5/t1
add wave -noupdate -expand -group regfile /test_sample/b2v_inst5/t2
add wave -noupdate -expand -group regfile /test_sample/b2v_inst5/s1
add wave -noupdate -expand -group regfile /test_sample/b2v_inst5/s2
add wave -noupdate -expand -group regfile /test_sample/b2v_inst5/s3
add wave -noupdate -expand -group regfile /test_sample/b2v_inst5/branch
add wave -noupdate -group alu /test_sample/b2v_inst4/clock
add wave -noupdate -group alu /test_sample/b2v_inst4/reg1
add wave -noupdate -group alu /test_sample/b2v_inst4/reg2
add wave -noupdate -group alu /test_sample/b2v_inst4/func
add wave -noupdate -group alu /test_sample/b2v_inst4/spec_fun
add wave -noupdate -group alu /test_sample/b2v_inst4/res
add wave -noupdate -group alu /test_sample/b2v_inst4/carry_out
add wave -noupdate -group alu /test_sample/b2v_inst4/br_out
add wave -noupdate -group alu /test_sample/b2v_inst4/result
add wave -noupdate -group fetch /test_sample/b2v_inst9/clock
add wave -noupdate -group fetch /test_sample/b2v_inst9/branch_ctrl
add wave -noupdate -group fetch /test_sample/b2v_inst9/jump_ctrl
add wave -noupdate -group fetch /test_sample/b2v_inst9/done_ctrl
add wave -noupdate -group fetch /test_sample/b2v_inst9/init_ctrl
add wave -noupdate -group fetch /test_sample/b2v_inst9/jump_val
add wave -noupdate -group fetch /test_sample/b2v_inst9/branch_val
add wave -noupdate -group fetch /test_sample/b2v_inst9/instruction_number
add wave -noupdate -group fetch /test_sample/b2v_inst9/cycle_counter
add wave -noupdate -group fetch /test_sample/b2v_inst9/pc
add wave -noupdate -group fetch /test_sample/b2v_inst9/cycles
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {391 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 255
configure wave -valuecolwidth 137
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
WaveRestoreZoom {303 ps} {450 ps}
