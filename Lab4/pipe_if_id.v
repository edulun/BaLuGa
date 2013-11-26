module pipe_if_id (
	input clock,
    input flush,

    input [8:0] if_instruction,
    input reg[7:0] id_branch_value,
    input reg id_branch_ctrl,
    input reg [7:0] id_jump_value,
    input reg id_jump_ctrl,

    output reg [8:0] id_instruction,
    output reg [7:0] if_branch_value,
    output reg if_branch_ctrl,
    output reg [7:0] if_jump_value,
    output reg if_jump_ctrl
);


reg [8:0] instruction;
reg [7:0] branch_value;
reg branch_ctrl;
reg [7:0] jump_value;
reg jump_ctrl;

always @(negedge clock) begin
    if(flush) begin
        instruction <= 9'bxxxxxxxxx;
        branch_value <= 8'bxxxxxxxx;
        branch_ctrl <= 1'bx;
        jump_value <= 8'bxxxxxxxx;
        jump_ctrl <= 1'bx;
    end
    else begin
        instruction <= if_instruction;
        branch_value <= id_branch_value;
        branch_ctrl <= id_branch_ctrl;
        jump_value <= id_jump_value;
        jump_ctrl <= id_jump_ctrl;
    end
end

always @(posedge clock) begin
    id_instruction <= instruction;
    if_branch_value <= branch_value;
    if_branch_ctrl <= branch_ctrl;
    if_jump_value <= jump_value;
    if_jump_ctrl <= jump_ctrl;
endmodule
