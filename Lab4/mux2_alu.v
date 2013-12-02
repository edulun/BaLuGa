module mux2_alu (
	input [7:0] id_mex_reg2,
	input [7:0] mex_wb_reg2,
    input [7:0] mex_wb_alu_res,
	input [1:0] fwd_unit_selector2,
	output [7:0] mux2_alu_out
);

reg [7:0] out;

always @ (fwd_unit_selector2 or id_mex_reg2 or mex_wb_reg2 or fwd_unit_selector2) begin
    // forward register 2 from ID/MEX pipe
	if (fwd_unit_selector2 == 2'b0) begin
		out = id_mex_reg2;
	end
    // forward register 2 from MEX/WB pipe
    else if (fwd_unit_selector2 == 2'b1) begin
        out = mex_wb_reg2;
    end
    // forward ALU result from MEX/WB pipe
	else begin
        out = mex_wb_alu_res;
	end
end

assign mux2_alu_out = out;

endmodule