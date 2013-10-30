module register_file (
	input clock,
	input write_ctrl,		
	input swap_ctrl,
	input [1:0] read_reg1,	
	input [2:0] read_reg2,
	input [2:0] write_reg,
	input [7:0] write_data,
	output [7:0] reg_val1,
	output [7:0] reg_val2
);
	
reg [7:0] zero, imm, t1, t2, s1, s2, s3, branch;
wire [7:0] reg_temp1, reg_temp2;

always @ (posedge clock)
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

	

always @(negedge clock) begin
	if(write_ctrl) begin
		case(write_reg)
			3'b001:	imm <= write_data;
			3'b010:	t1 <= write_data;
			3'b011:	t2 <= write_data;
			3'b100:	s1 <= write_data;
			3'b101:	s2 <= write_data;
			3'b110:	s3 <= write_data;
			3'b111:	branch <= write_data;
		endcase
	end
end
			
endmodule