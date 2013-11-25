module pipe_id_mex (
	input clock,
    input flush,

    //TODO: forward to register file if it is a setTO,setFrom, or swap 
    //using the previous write_addr as the current read_addr1 or read_addr2

    //Values obtained from register file
    input reg [7:0] id_reg_val1,
    input reg [7:0] id_reg_val2,
    input reg [7:0] id_branch_val,

    //Value for immediate obtained from instruction
    input reg [3:0] id_imm_val,


    //Register addresses from control unit
    input reg [2:0] id_read_addr1,
    input reg [2:0] id_read_addr2,
    input reg [2:0] id_reg_write_addr,

    //ALU functions from control unit
    input reg [3:0] id_alu_func,
    input reg [2:0] id_alu_spec_func,

    //Control unit for choosing between register/immediate (mux_alu)
    input reg alu_src,

    //Control units for data memory
    input reg mem_write, 
    input reg mem_read, 

    //Control unit if it's a branch instruction
    input reg branch_ctrl, 
    input reg reg_write,
    input reg done_ctrl, 
    input reg jmp_ctrl,

    //Sent to memory/execute
    output reg [7:0] mex_reg_val1,
    output reg [7:0] mex_reg_val2,
    output reg [2:0] mex_read_addr1,
    output reg [2:0] mex_read_addr2,
    output reg [3:0] mex_alu_func,
    output reg [2:0] mex_spec_func,
    output reg [2:0] mex_write_addr,
    output reg mex_alu_src,
    output reg mex_mem_write, 
    output reg mex_mem_read, 
    output reg mex_reg_write,

    //Sent back to instruction fetch
    output reg if_branch_ctrl, 
    output reg if_done_ctrl, 
    output reg if_jmp_ctrl,
    output reg if_jmp_val,
    output reg [7:0] if_branch_val


);

reg [7:0] reg_val1,
reg [7:0] reg_val2,
reg [2:0] read_addr1,
reg [2:0] read_addr2,
reg [3:0] alu_func,
reg [2:0] spec_func,
reg [2:0] write_addr,
reg alu_src,
reg mem_write, 
reg mem_read, 
reg reg_write,
reg branch_ctrl, 
reg done_ctrl, 
reg jmp_ctrl,
reg [8:0] branch_val;
reg [8:0] jmp_val;

always @(negedge clock) begin
    if(flush) begin
        reg_val1 <= 8'bxxxxxxxx;
        reg_val2 <= 8'bxxxxxxxx;
        read_addr1 <= 3'bxxx;
        read_addr2 <= 3'bxxx;
        alu_func  <= 4'bxxxx;
        spec_func <= 3'bxx;
        write_addr <= 3'bxxx;
        alu_src <= 1'bx;
        mem_write <= 1'bx;
        mem_read  <= 1'bx;
        reg_write <= 1'bx;
        branch_ctrl  <= 1'bx;
        done_ctrl <= 1'bx;
        jmp_ctrl <= 1'bx;
        branch_val <= 8'bxxxxxxxx;
        jmp_val <= 8'bxxxxxxxx;
    end
    else begin
        reg_val1 <= id_reg_val1;
        reg_val2 <= id_reg_val2;
        read_addr1 <= id_read_addr1;
        read_addr2 <= id_read_addr2;
        alu_func  <= id_alu_func;
        spec_func <= id_spec_func;
        write_addr <= id_write_addr;
        alu_src <= id_alu_src;
        mem_write <= id_mem_write;
        mem_read  <= id_mem_read;
        reg_write <= id_reg_write;
        branch_ctrl  <= id_branch;
        done_ctrl <= id_done_ctrl;
        jmp_ctrl <= id_jmp_ctrl;
        branch_val <= id_branch_ctrl;
        jmp_val <= id_jmp_val;
    end
end

always @(posedge clock) begin
    mex_reg_val1 <= reg_val1;
    mex_reg_val2 <= reg_val2;
    mex_read_addr1 <= read_addr1;
    mex_read_addr2 <= read_addr2;
    mex_alu_func  <= alu_func;
    mex_spec_func <= spec_func;
    mex_write_addr <= write_addr;
    mex_alu_src <= alu_src;
    mex_mem_write <= mem_write;
    mex_mem_read  <= mem_read;
    mex_reg_write <= reg_write;

    if_branch_ctrl  <= branch_ctrl;
    if_done_ctrl <= done_ctrl;
    if_jmp_ctrl <= jmp_ctrl;
    if_jmp_val <= jmp_val;
    if_branch_val <= branch_val;
endmodule
