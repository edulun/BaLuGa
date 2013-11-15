 `define add_op 	4'b0000		// add
 `define ld_op 	    4'b0001		// load
 `define st_op 	    4'b0010		// store
 `define sl_op 		4'b0011		// shift left
 `define sr_op 		4'b0100		// shift right
 `define stt_op 	4'b0101		// set to	
 `define stf_op 	4'b0110		// set from
 `define spec_op 	4'b0111		// special operation
 `define swp_op 	4'b1001		// swap
 `define stl_op 	4'b1010		// set low	
 `define sth_op 	4'b1011		// set high	
 `define beq_op 	4'b1100		// branch on equal
 `define blt_op 	4'b1101		// branch on less than	
 `define jmp_op 	4'b1110		// jump

 // Special operations
 `define inc_op 	3'b000		// increment
 `define aon_op 	3'b001		// and with one
 `define hlt_op 	3'b010		// halt
 `define seg_op 	3'b011		// subtract 8
 `define pkr_op 	3'b100		// poker	

module control_unit (
	input clock,
    input [8:0] instruction,
    output reg [3:0] alu_func,
    output reg [2:0] alu_spec_func,
    output reg [2:0] reg_write_val,
    output reg [1:0] set_ctrl,
    output reg alu_src,
    output reg mem_write, 
    output reg mem_read, 
    output reg branch, 
    output reg reg_write,
    output reg swap_ctrl, 
    output reg done_ctrl, 
    output reg jmp_ctrl
);

reg [3:0] opcode;
reg [2:0] spec_instr;

always @(*) begin
    opcode = instruction[8:5];
    spec_instr = instruction[2:0];

    case(opcode) 
        //ADD 
       `add_op: begin
            reg_write_val <= instruction[4:3];
            alu_func <= 4'b0000;
            alu_spec_func <= 3'bxxx;
            set_ctrl <= 2'b00;
            alu_src <=   0;
            mem_write <= 0;
            mem_read <=  0;
            branch <=    0;
            reg_write <= 1;
            swap_ctrl <= 0;
            done_ctrl <= 0;
            jmp_ctrl <= 0;
        end
        //SHIFT LEFT
        `sl_op: begin
            reg_write_val <= instruction[4:3];
            alu_func <= 4'b0011;
            alu_spec_func <= 3'bxxx;
            set_ctrl <= 2'b00;
            alu_src <=   0;
            mem_write <= 0;
            mem_read <=  0;
            branch <=    0;
            reg_write <= 1;
            swap_ctrl <= 0;
            done_ctrl <= 0;
            jmp_ctrl <= 0;
        end
        //SHIFT RIGHT
        `sr_op: begin
            reg_write_val <= instruction[4:3];
            alu_func <= 4'b0100;
            alu_spec_func <= 3'bxxx;
            set_ctrl <= 2'b00;
            alu_src <=   1'b0;
            mem_write <= 0;
            mem_read <=  0;
            branch <=    0;
            reg_write <= 1;
            swap_ctrl <= 0;
            done_ctrl <= 0;
            jmp_ctrl <= 0;
        end
        //SET TO
        `stt_op: begin
            reg_write_val [2] = 0;
            reg_write_val [1:0] <= instruction[4:3];
            alu_func <= 4'b0101;
            alu_spec_func <= 3'bxxx;
            set_ctrl <= 2'b00;
            alu_src <=   1'b0;
            mem_write <= 0;
            mem_read <=  0;
            branch <=    0;
            reg_write <= 1;
            swap_ctrl <= 0;
            done_ctrl <= 0;
            jmp_ctrl <=  0;
        end
        //SET FROM 
        `stf_op: begin
            reg_write_val <= instruction[2:0];
            alu_func <= 4'b0110;
            alu_spec_func <= 3'bxxx;
            set_ctrl <= 2'b00;
            alu_src <=   1'b0;
            mem_write <= 0;
            mem_read <=  0;
            branch <=    0;
            reg_write <= 1;
            swap_ctrl <= 0;
            done_ctrl <= 0;
            jmp_ctrl <= 0;
        end
        //SPECIAL OP
        `spec_op: begin
            case(spec_instr)
                //INCREMENT
                `inc_op: begin
                    reg_write_val[2] <= 0;
                    reg_write_val[1:0] <= instruction[4:3];
                    alu_func <= 4'b0111;
					alu_spec_func <= 3'b000;
                    alu_src <= 1'b0;
                    set_ctrl <= 2'b00;
                    mem_write <= 0;
                    mem_read <=  0;
                    branch <=    0;
                    reg_write <= 1;
                    swap_ctrl <= 0;
                    done_ctrl <= 0;
                    jmp_ctrl <= 0;
                end
                //AND ONE
                `aon_op: begin
                    reg_write_val[2] <= 0;
                    reg_write_val[1:0] <= instruction[4:3];
                    alu_func <= 4'b0111;
					alu_spec_func <= 3'b001;
                    alu_src <= 1'b0;
                    set_ctrl <= 2'b00;
                    mem_write <= 0;
                    mem_read <=  0;
                    branch <=    0;
                    reg_write <= 1;
                    swap_ctrl <= 0;
                    done_ctrl <= 0;
                    jmp_ctrl <= 0;
                end        
                //SUBTRACT EIGHT
                `seg_op: begin
                    reg_write_val[2] <= 0;
                    reg_write_val[1:0] <= instruction[4:3];
                    alu_func <= 4'b0111;
					alu_spec_func <= 3'b011;
                    alu_src <= 1'b0;
                    set_ctrl <= 2'b00;
                    mem_write <= 0;
                    mem_read <=  0;
                    branch <=    0;
                    reg_write <= 1;
                    swap_ctrl <= 0;
                    done_ctrl <= 0;
                    jmp_ctrl <= 0;
                end
                //POKER
                `pkr_op: begin
                    reg_write_val[2] <= 0;
                    reg_write_val[1:0] <= instruction[4:3];
                    alu_func <= 4'b0111;
					alu_spec_func <= 3'b100;
                    alu_src <= 1'b0;
                    set_ctrl <= 2'b00;
                    mem_write <= 0;
                    mem_read <=  0;
                    branch <=    0;
                    reg_write <= 1;
                    swap_ctrl <= 0;
                    done_ctrl <= 0;
                    jmp_ctrl <= 0;
                end
                //HALT
                `hlt_op: begin
                    reg_write_val <= 3'bxxx;
                    alu_func <= 4'bxxxx;
					alu_spec_func <= 3'bxxx;
                    alu_src <= 1'b0;
                    set_ctrl <= 2'b00;
                    mem_write <= 1'b0;
                    mem_read <=  1'b0;
                    branch <=    1'b0;
                    reg_write <= 1'b0;
                    swap_ctrl <= 1'b0;
                    done_ctrl <= 1;
                    jmp_ctrl <= 0;
                end
            endcase
        end
        //SET LOW
        `stl_op: begin
            reg_write_val <= instruction[4] == 0 ? 3'b001: 3'b111;
            alu_func <= 4'b1010;
            alu_spec_func <= 3'bxxx;
            alu_src <= 1'b1;
            set_ctrl[1] <= 1;
            set_ctrl[0] <= instruction[4];
            mem_write <= 0;
            mem_read <=  0;
            branch <=    0;
            reg_write <= 1;
            swap_ctrl <= 0;
            done_ctrl <= 0;
            jmp_ctrl <= 0;
        end
        //SET HIGH
        `sth_op: begin
            reg_write_val <= instruction[4] == 0 ? 3'b001: 3'b111;
            alu_func <= 4'b1011;
            alu_spec_func <= 3'bxxx;
            alu_src <= 1'b1;
            set_ctrl[1] <= 1;
            set_ctrl[0] <= instruction[4];
            mem_write <= 0;
            mem_read <=  0;
            branch <=    0;
            reg_write <= 1;
            swap_ctrl <= 0;
            done_ctrl <= 0;
            jmp_ctrl <= 0;
        end
        //BRANCH EQUAL
        `beq_op: begin
            reg_write_val <= 3'bxxx;
            alu_func <= 4'b1100;
            alu_spec_func <= 3'bxxx;
            alu_src <= 1'b0;
            set_ctrl <= 2'b00;
            mem_write <= 0;
            mem_read <=  0;
            branch <=    1;
            reg_write <= 0;
            swap_ctrl <= 0;
            done_ctrl <= 0;
            jmp_ctrl <= 0;
        end
        //BRANCH LESS THAN
        `blt_op: begin
            reg_write_val <= 3'bxxx;
            alu_func <= 4'b1101;
            alu_spec_func <= 3'bxxx;
            alu_src <= 1'b0;
            set_ctrl <= 2'b00;
            mem_write <= 0;
            mem_read <=  0;
            branch <=    1;
            reg_write <= 0;
            swap_ctrl <= 0;
            done_ctrl <= 0;
            jmp_ctrl <= 0;
        end
        //LOAD
        `ld_op: begin
            reg_write_val <= instruction[4:3];
            alu_func <= 4'bxxxx;
            alu_spec_func <= 3'bxxx;
            alu_src <= 1'b0;
            set_ctrl <= 2'b00;
            mem_write <= 0;
            mem_read <=  1;
            branch <=    0;
            reg_write <= 1;
            swap_ctrl <= 0;
            done_ctrl <= 0;
            jmp_ctrl <= 0;
        end
        //STORE
        `st_op: begin
            reg_write_val <= 3'bxxx;
            alu_func <= 4'bxxxx;
            alu_spec_func <= 3'bxxx;
            alu_src <= 1'b0;
            set_ctrl <= 2'b00;
            mem_write <= 1;
            mem_read <=  0;
            branch <=    0;
            reg_write <= 0;
            swap_ctrl <= 0;
            done_ctrl <= 0;
            jmp_ctrl <= 0;
        end
        //SWAP
        `swp_op: begin
            reg_write_val <= 3'bxxx;
            alu_func <= 4'bxxxx;
            alu_spec_func <= 3'bxxx;
            alu_src <= 1'b0;
            set_ctrl <= 2'b00;
            mem_write <= 0;
            mem_read <=  0;
            branch <=    0;
            reg_write <= 1;
            swap_ctrl <= 1;
            done_ctrl <= 0;
            jmp_ctrl <= 0;
        end
        //JUMP
        `jmp_op: begin
            reg_write_val <= 3'bxxx;
            alu_src <= 1'b0;
            alu_func <= 4'bxxxx;
            alu_spec_func <= 3'bxxx;
            set_ctrl <= 2'b00;
            mem_write <= 0;
            mem_read <= 0;
            branch <= 0;
            reg_write <= 0;
            swap_ctrl <= 0;
            done_ctrl <= 0;
            jmp_ctrl <= 1;
        end
    endcase
end
	
endmodule
