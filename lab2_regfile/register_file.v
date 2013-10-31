module register_file (
	input clock,
	input write_ctrl,		
	input swap_ctrl,
	input [1:0] read_reg1,	
	input [2:0] read_reg2,
	input [2:0] write_reg,
	input [7:0] write_val,
	output reg [7:0] reg_val1,
	output reg [7:0] reg_val2
);
	
reg [7:0] zero, imm, t1, t2, s1, s2, s3, branch;

initial begin
	zero = 0;
	reg_val1 = 0;
	reg_val2 = 0;
end


always @ (*)
begin
	case (read_reg1)
		2'b00:	reg_val1 <= zero;
		2'b01:	reg_val1 <= imm;
		2'b10:	reg_val1 <= t1;
		2'b11:	reg_val1 <= t2;
	endcase
	case (read_reg2)
		3'b000:	reg_val2 <= zero;
		3'b001:	reg_val2 <= imm;
		3'b010:	reg_val2 <= t1;
		3'b011:	reg_val2 <= t2;
		3'b100:	reg_val2 <= s1;
		3'b101:	reg_val2 <= s2;
		3'b110:	reg_val2 <= s3;
		3'b111:	reg_val2 <= branch;
	endcase


end

	

always @(negedge clock) begin
	if(write_ctrl) begin
		case(write_reg)
			3'b001:	imm <= write_val;
			3'b010:	t1 <= write_val;
			3'b011:	t2 <= write_val;
			3'b100:	s1 <= write_val;
			3'b101:	s2 <= write_val;
			3'b110:	s3 <= write_val;
			3'b111:	branch <= write_val;
		endcase
	end
	if (swap_ctrl) begin
		case (read_reg1)
			2'b01:	imm <= reg_val2;
			2'b10:	t1 <= reg_val2;
			2'b11:	t2 <= reg_val2;
		endcase	
		case (read_reg2)
			3'b001:	imm <= reg_val1;
			3'b010:	t1 <= reg_val1;
			3'b011:	t2 <= reg_val1;
			3'b100:	s1 <= reg_val1;
			3'b101:	s2 <= reg_val1;
			3'b110:	s3 <= reg_val1;
			3'b111:	branch <= reg_val1;
		endcase
	end
	
end
			
endmodule