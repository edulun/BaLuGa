 //Fun_in operations
 `define add_op 	4'b0000
 `define sll_op 	4'b0011
 `define slr_op 	4'b0100
 `define spec_op 	4'b0111
 `define be_op 		4'b1011
 `define blt_op 	4'b1010
 `define unk_op 	4'b1011

 //Spec_fun Operations
 `define inc_op 	3'b000
 `define and1_op 	3'b001
 `define sub8_op 	3'b011

module alu (
	input clock,
	input [7:0] reg1,
	input [7:0] reg2,
	input [3:0] func,
	input [2:0] spec_fun,
	output reg [7:0] res,
	output reg br_out
);

reg [7:0] result;
//reg [7:0] res_out = res;
//reg branch_out = br_out;

always @(posedge clock) //SOMETHING HERE
begin
	result = 0;
	br_out = 0;
	case(func)
		`add_op: res <= reg1 + reg2;
		`sll_op: res <= reg1 << reg2;
		`slr_op: res <= reg1 >> reg2;
		`be_op: begin
			if (reg1 == reg2)	
				br_out <= 1;
			end
		`blt_op: begin
			if (reg1 < reg2)	
				br_out <= 1;
			end
		`spec_op: begin
			case (spec_fun)
				`inc_op:	res <= reg1 + 8'b1;
				`and1_op: res <= reg1 & 8'b1;
				`sub8_op: res <= reg1 - 8'b1;	
			endcase
		end
	endcase
end

		
endmodule