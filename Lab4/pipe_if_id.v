module pipe_if_id (
    input clock,
    input flush,
    input stall,
    input [8:0] IF_instruction,
    output reg [8:0] ID_instruction
);


reg [8:0] instruction;

always @(negedge clock) begin
    if(flush) begin
        instruction <= 9'bxxxxxxxxx;
    end
    else begin
        if(!stall) instruction <= IF_instruction;
    end
end

always @(posedge clock) begin
    if(stall) ID_instruction <= 9'bxxxxxxxxx;
    else ID_instruction <= instruction;
end
endmodule
