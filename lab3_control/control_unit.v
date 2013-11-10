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

module control_unit (
	input clock,
    input [3:0] instruction,
    input [2:0] spec_instr,
    output reg [3:0] alu_func,
    output reg [2:0] alu_spec_func,
    output alu_src, mem_write, mem_read, branch, reg_write, swap_ctrl, done_ctrl
);


initial begin
end

always @(posedge clock) begin
    opcode = instruction [8:5];

    case(opcode)
        `add_op: begin
            alu_func = 4'b0000;
            alu_spec_func = 3'bxxx;
            alu_src =   0;
            mem_write = 0;
            mem_read =  0;
            branch =    0;
            reg_write = 1;
            swap_ctrl = 0;
            done_ctrl = 0;
        end
        'sll_op: begin
            alu_func = 4'b0011;
            alu_spec_func = 3'bxxx;
            alu_src =   0;
            mem_write = 0;
            mem_read =  0;
            branch =    0;
            reg_write = 1;
            swap_ctrl = 0;
            done_ctrl = 0;
        end
        'slr_op: begin
            alu_func = 4'b0100;
            alu_spec_func = 3'bxxx;
            alu_src =   0;
            mem_write = 0;
            mem_read =  0;
            branch =    0;
            reg_write = 1;
            swap_ctrl = 0;
            done_ctrl = 0;
        end
        'stt_op: begin
            alu_func = 4'b0101;
            alu_spec_func = 3'bxxx;
            alu_src =   0;
            mem_write = 0;
            mem_read =  0;
            branch =    0;
            reg_write = 1;
            swap_ctrl = 0;
            done_ctrl = 0;
        end
        'stf_op: begin
            alu_func = 4'b0110;
            alu_spec_func = 3'bxxx;
            alu_src =   0;
            mem_write = 0;
            mem_read =  0;
            branch =    0;
            reg_write = 1;
            swap_ctrl = 0;
            done_ctrl = 0;
        end
        'spec_op: begin
            case (
            'aon_op: begin
                alu_func = 4'b0111;
                alu_spec_func = 3'b001;
                alu_src = 1'bx;
                mem_write = 0;
                mem_read =  0;
                branch =    0;
                reg_write = 1;
                swap_ctrl = 0;
                done_ctrl = 0;
            end        
            'seg_op: begin
                alu_func = 4'b0111;
                alu_spec_func = 3'b011;
                alu_src = 1'bx;
                mem_write = 0;
                mem_read =  0;
                branch =    0;
                reg_write = 1;
                swap_ctrl = 0;
                done_ctrl = 0;
            end
            'hlt_op: begin
                alu_func = 4'bxxxx;
                alu_spec_func = 3'bxxx;
                alu_src = 1'bx;
                mem_write = x;
                mem_read =  x;
                branch =    x;
                reg_write = x;
                swap_ctrl = x;
                done_ctrl = 1;
            end
        end
        'slw_op: begin
            alu_func = 4'b1010;
            alu_spec_func = 3'bxxx;
            alu_src = 1'b1;
            mem_write = 0;
            mem_read =  0;
            branch =    0;
            reg_write = 1;
            swap_ctrl = 0;
            done_ctrl = 0;
        end
        'shg_op: begin
            alu_func = 4'bxxxx;
            alu_spec_func = 3'bxxx;
            alu_src = 1'b1;
            mem_write = 0;
            mem_read =  0;
            branch =    0;
            reg_write = 1;
            swap_ctrl = 0;
            done_ctrl = 0;
        end
        'beq_op: begin
            alu_func = 4'b1100;
            alu_spec_func = 3'bxxx;
            alu_src = 1'b0;
            mem_write = 0;
            mem_read =  0;
            branch =    1;
            reg_write = 0;
            swap_ctrl = 0;
            done_ctrl = 0;
        end
        'blt_op: begin
            alu_func = 4'b1101;
            alu_spec_func = 3'bxxx;
            alu_src = 1'b0;
            mem_write = 0;
            mem_read =  0;
            branch =    1;
            reg_write = 0;
            swap_ctrl = 0;
            done_ctrl = 0;
        end
        'ld_op: begin
            alu_func = 4'bxxxx;
            alu_spec_func = 3'bxxx;
            alu_src = 1'bx;
            mem_write = 0;
            mem_read =  1;
            branch =    0;
            reg_write = 0;
            swap_ctrl = 0;
            done_ctrl = 0;
        end
        'st_op: begin
            alu_func = 4'bxxxx;
            alu_spec_func = 3'bxxx;
            alu_src = 1'bx;
            mem_write = 0;
            mem_read =  1;
            branch =    0;
            reg_write = 0;
            swap_ctrl = 0;
            done_ctrl = 0;
        end
        'swp_op: begin
            alu_func = 4'bxxxx;
            alu_spec_func = 3'bxxx;
            alu_src = 1'bx;
            mem_write = 0;
            mem_read =  0;
            branch =    0;
            reg_write = 1;
            swap_ctrl = 1;
            done_ctrl = 0;
        end
    endcase
end

		
endmodule
