module pipe_if_id (
    input clock,
    input flush,
    input stall,
    input [8:0] IF_instruction,
    output reg [8:0] ID_instruction
);


reg [8:0] instruction;

always @(negedge clock) begin
    instruction <= IF_instruction;
end

always @(posedge clock) begin
    if(stall|| flush) ID_instruction <= 9'bxxxxxxxxx;
    else ID_instruction <= instruction;
end
endmodule
