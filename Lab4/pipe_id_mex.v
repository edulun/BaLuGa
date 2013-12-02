module pipe_id_mex (
	input clock,
    input flush,

    //TODO: forward to register file if it is a setTO,setFrom, or swap 
    //maybe add jump value to output
    //using the previous write_addr as the current read_addr1 or read_addr2

    //Values obtained from register file
    input [7:0] ID_branch_val,
    input [7:0] ID_jmp_val,
	input [7:0] ID_reg_val1,
    input [7:0] ID_reg_val2,
	 
    //Value for immediate obtained from instruction
    input [3:0] ID_imm_val,

    //Register addresses from control unit
    input [2:0] ID_read_addr1,
    input [2:0] ID_read_addr2,

    //ALU functions from control unit
    input [3:0] ID_alu_func,
    input [2:0] ID_alu_spec_func,

    input [2:0] ID_write_addr,

    //Control flag for choosing between register/immediate (mux_alu)
    input ID_alu_src,

    //Control flags for data memory - writing to register
    input ID_mem_write, 
    input ID_mem_read, 
    input ID_branch_ctrl, 
    input ID_reg_write,

    //Control unit for branch/jump instructions 
    input ID_done_ctrl, 
    input ID_jmp_ctrl,

    //Sent to memory/execute
    output reg [7:0] MEX_reg_val1,
    output reg [7:0] MEX_reg_val2,
    output reg [7:0] MEX_branch_val,
    output reg [7:0] MEX_jmp_val,
    output reg [3:0] MEX_imm_val,

    output reg [2:0] MEX_read_addr1,
    output reg [2:0] MEX_read_addr2,
    output reg [2:0] MEX_write_addr,

    output reg [3:0] MEX_alu_func,
    output reg [2:0] MEX_alu_spec_func,

    output reg MEX_alu_src,

    output reg MEX_mem_write, 
    output reg MEX_mem_read, 

    output reg MEX_reg_write,

    //Sent back to instruction fetch
    output reg MEX_branch_ctrl, 
    output reg MEX_done_ctrl, 
    output reg MEX_jmp_ctrl


);

reg [7:0] reg_val1;
reg [7:0] reg_val2;
reg [7:0] branch_val;
reg [7:0] jmp_val;
reg [3:0] imm_val;

reg [2:0] read_addr1;
reg [2:0] read_addr2;
reg [2:0] write_addr;

reg [3:0] alu_func;
reg [2:0] alu_spec_func;

reg alu_src;
reg mem_write; 
reg mem_read;
reg reg_write;
reg branch_ctrl; 
reg done_ctrl;
reg jmp_ctrl;

always @(negedge clock) begin
    if(flush) begin
        reg_val1 <= 8'bxxxxxxxx;
        reg_val2 <= 8'bxxxxxxxx;
        read_addr1 <= 3'bxxx;
        read_addr2 <= 3'bxxx;
        branch_val <= 8'bxxxxxxxx;
        jmp_val <= 8'bxxxxxxxx;
        imm_val <= 4'bxxxx;
        read_addr1 <= 3'bxxx;
        read_addr2 <= 3'bxxx;
        write_addr <= 3'bxxx;

        alu_func  <= 4'bxxxx;
        alu_spec_func <= 3'bxx;

        alu_src <= 1'bx;
        mem_write <= 1'bx;
        mem_read  <= 1'bx;
        reg_write <= 1'bx;
        branch_ctrl  <= 1'bx;
        done_ctrl <= 1'bx;
        jmp_ctrl <= 1'bx;
    end
    else begin
        reg_val1 <= ID_reg_val1;
        reg_val2 <= ID_reg_val2;
        read_addr1 <= ID_read_addr1;
        read_addr2 <= ID_read_addr2;
        branch_val <= ID_branch_val;
        jmp_val <= ID_jmp_val;
        write_addr <= ID_write_addr;

        alu_func  <= ID_alu_func;
        alu_spec_func <= ID_alu_spec_func;

        alu_src <= ID_alu_src;
        mem_write <= ID_mem_write;
        mem_read  <= ID_mem_read;
        reg_write <= ID_reg_write;
        branch_ctrl  <= ID_branch_ctrl;
        done_ctrl <= ID_done_ctrl;
        jmp_ctrl <= ID_jmp_ctrl;
    end
end

always @(posedge clock) begin
    MEX_reg_val1 <= reg_val1;
    MEX_reg_val2 <= reg_val2;
    MEX_branch_val <= branch_val;
    MEX_jmp_val <= jmp_val;
    MEX_imm_val <= imm_val;

    MEX_read_addr1 <= read_addr1;
    MEX_read_addr2 <= read_addr2;
    MEX_write_addr <= write_addr;

    MEX_alu_func  <= alu_func;
    MEX_alu_spec_func <= alu_spec_func;

    MEX_alu_src <= alu_src;

    MEX_mem_write <= mem_write;
    MEX_mem_read  <= mem_read;

    MEX_reg_write <= reg_write;

    MEX_branch_ctrl  <= branch_ctrl;
    MEX_done_ctrl <= done_ctrl;
    MEX_jmp_ctrl <= jmp_ctrl;
end
endmodule
