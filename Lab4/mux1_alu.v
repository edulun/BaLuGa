module mux1_alu (
	input [7:0] id_mex_reg1,
	//input [7:0] mex_wb_reg1,
    input [7:0] mex_wb_alu_res,
	input fwd_unit_selector1,
	output [7:0] mux_alu_out
);

reg [7:0] out;

always @ (fwd_unit_selector1 or id_mex_reg1 or mex_wb_alu_res) begin
    // forward register 1 from ID/MEX pipe
	if (fwd_unit_selector1 == 0) begin
		out = id_mex_reg1;
	end
	// forward ALU result from MEX/WB pipe
	else begin
        out = mex_wb_alu_res;
	end
	/*
    // forward register 1 from MEX/WB pipe
    else if (fwd_unit_selector1 == 2'b1) begin
        out = mex_wb_reg1;
    end
    */
end

assign mux_alu_out = out;

endmodule