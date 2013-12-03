module mux_reg_write_val (

	input selector,				// mem read from control
	input [7:0] alu_result,		// result from alu operation
	input [7:0] mem_val,		// value extracted from memory ram

	output [7:0] mux_reg_out
);

reg [7:0] out;

always @ (selector or mem_val or alu_result) begin
	// mem read low, send alu result as write value
	if (selector == 1'b0) begin
		out = alu_result;
	end
	// mem read high, send value from memory
	else begin
		out = mem_val; 
	end
end

assign mux_reg_out = out;

endmodule