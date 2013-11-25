module mux_alu (
	input [7:0] register_2,
	input [3:0] immediate,
	input selector,
	output [7:0] mux_alu_out
);

reg [7:0] out;

always @ (selector or register_2 or immediate) begin
	if (selector == 1'b0) begin
		out = register_2;
	end
	else begin
		out[7:4] = 4'b0;
		out[3:0] = immediate; 
	end
end

assign mux_alu_out = out;

endmodule