module register_file (
	input clock,
	input write_ctrl,	
	input carry_out,
	input swap_ctrl,
   input [1:0] set_ctrl,
	input [2:0] write_reg,
	input [7:0] write_val,
	input [1:0] read_reg1,	
	input [2:0] read_reg2,
   output reg [7:0] branch_val,
	output reg [7:0] read_val1,
	output reg [7:0] read_val2
);
	
reg [7:0] zero, imm, t1, t2, s1, s2, s3, branch;

initial begin
	zero = 0;
    imm = 0;
    t1 = 0;
    t2 = 0;
    s1 = 0;
    s2 = 0;
    s3 = 0;
    branch = 0;
	read_val1 = 0;
	read_val2 = 0;
end


always @ (*)
begin
    if(set_ctrl[1] == 1) begin
        if (set_ctrl[0] == 0) read_val1 <= imm;
        else read_val1 <= branch;
    end
else begin
        case (read_reg1)
            2'b00:	read_val1 <= zero;
            2'b01:	read_val1 <= imm;
            2'b10:	read_val1 <= t1;
            2'b11:	read_val1 <= t2;
        endcase
    end
	case (read_reg2)
		3'b000:	read_val2 <= zero;
		3'b001:	read_val2 <= imm;
		3'b010:	read_val2 <= t1;
		3'b011:	read_val2 <= t2;
		3'b100:	read_val2 <= s1;
		3'b101:	read_val2 <= s2;
		3'b110:	read_val2 <= s3;
		3'b111:	read_val2 <= branch;
	endcase

    branch_val <= branch;


end

	

always @(negedge clock) begin
	if(write_ctrl) begin
        if(carry_out) begin
            imm <= 8'b1;
            case(write_reg)
                3'b010:	t1 <= write_val;
                3'b011:	t2 <= write_val;
                3'b100:	s1 <= write_val;
                3'b101:	s2 <= write_val;
                3'b110:	s3 <= write_val;
                3'b111:	branch <= write_val;
            endcase
        end
		else case(write_reg)
			3'b001:	imm <= write_val;
			3'b010:	t1 <= write_val;
			3'b011:	t2 <= write_val;
			3'b100:	s1 <= write_val;
			3'b101:	s2 <= write_val;
			3'b110:	s3 <= write_val;
			3'b111:	branch <= write_val;
		endcase
	end
	else if (swap_ctrl) begin
		case (read_reg1)
			2'b01:	imm <= read_val2;
			2'b10:	t1 <= read_val2;
			2'b11:	t2 <= read_val2;
		endcase	
		case (read_reg2)
			3'b001:	imm <= read_val1;
			3'b010:	t1 <= read_val1;
			3'b011:	t2 <= read_val1;
			3'b100:	s1 <= read_val1;
			3'b101:	s2 <= read_val1;
			3'b110:	s3 <= read_val1;
			3'b111:	branch <= read_val1;
		endcase
	end
	
end
			
endmodule
