module decoder (
	input clock,
    input [8:0] instruction
);

wire [3:0] opcode;

initial begin
end

always @(posedge clock) begin
    opcode = instruction [8:5];


end

		
endmodule
