module pipe_if_id (
    input clock,
    input flush,
    input [8:0] IF_instruction,
    output reg [8:0] ID_instruction
);


reg [8:0] instruction;

always @(negedge clock) begin
    if(flush) begin
        instruction <= 9'bxxxxxxxxx;
    end
    else begin
        instruction <= IF_instruction;
    end
end

always @(posedge clock) begin
    ID_instruction <= instruction;
end
endmodule
