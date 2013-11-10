 `define add_op 	4'b0000	
 `define ld_op 	    4'b0001	
 `define st_op 	    4'b0010	
 `define sll_op 	4'b0011	
 `define slr_op 	4'b0100	
 `define stt_op 	4'b0101	
 `define stf_op 	4'b0110	
 `define spec_op 	4'b0100	
 `define swp_op 	4'b1001	
 `define stl_op 	4'b1010	
 `define sth_op 	4'b1001	
 `define beq_op 	4'b1100	
 `define blt_op 	4'b1101	
 `define jmp_op 	4'b1110	
 `define unk_op 	4'b1111	

 `define inc_op 	3'b000	
 `define aon_op 	3'b001	
 `define seg_op 	3'b011	
 `define hlt_op 	3'b100	
 `define pkr_op 	3'b111	


module control_unit (
	input clock,
    input [8:0] instruction,
    //input [2:0] spec_instr,
    output reg [6:0] alu_ctrl,
    output reg [2:0] reg_write_val,
    output reg alu_src,
    output reg mem_write, 
    output reg mem_read, 
    output reg branch, 
    output reg reg_write,
    output reg swap_ctrl, 
    output reg done_ctrl, 
    output reg jmp_ctrl
);

initial begin
end

reg [3:0] opcode;
reg [2:0] spec_instr;

always @(posedge clock) begin
    opcode = instruction[8:5];
    spec_instr = instruction[2:0];

    case(opcode) 
        //ADD 
       `add_op: begin
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
        `slr_op: begin
            alu_src <=   0;
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
            alu_src <=   0;
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
            alu_src <=   0;
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
                    alu_src <= 1'bx;
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
                    alu_src <= 1'bx;
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
                    alu_src <= 1'bx;
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
                    alu_src <= 1'bx;
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
                    alu_src <= 1'bx;
                    mem_write <= 1'bx;
                    mem_read <=  1'bx;
                    branch <=    1'bx;
                    reg_write <= 1'bx;
                    swap_ctrl <= 1'bx;
                    done_ctrl <= 1;
                    jmp_ctrl <= 0;
                end
            endcase
        end
        //SET LOW
        `stl_op: begin
            alu_src <= 1'b1;
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
            alu_src <= 1'b1;
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
            alu_src <= 1'b0;
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
            alu_src <= 1'b0;
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
            alu_src <= 1'bx;
            mem_write <= 0;
            mem_read <=  1;
            branch <=    0;
            reg_write <= 0;
            swap_ctrl <= 0;
            done_ctrl <= 0;
            jmp_ctrl <= 0;
        end
        //STORE
        `st_op: begin
            alu_src <= 1'bx;
            mem_write <= 0;
            mem_read <=  1;
            branch <=    0;
            reg_write <= 0;
            swap_ctrl <= 0;
            done_ctrl <= 0;
            jmp_ctrl <= 0;
        end
        //SWAP
        `swp_op: begin
            alu_src <= 1'bx;
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
            alu_src <= 1'bx;
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
