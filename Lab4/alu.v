 //Fun_in operations
 `define add_op 	4'b0000		// add
 `define sl_op 		4'b0011		// shift left
 `define sr_op 		4'b0100		// shift right
 `define stt_op		4'b0101		// set to
 `define stf_op		4'b0110		// set from
 `define spec_op 	4'b0111		// special operation
 `define slw_op		4'b1010		// set low
 `define shg_op		4'b1011		// set high
 `define be_op 		4'b1100		// branch on equal
 `define blt_op 	4'b1101		// branch on less than
 `define unk_op 	4'b1111		// unknown

 //Spec_fun Operations
 `define inc_op 	3'b000		// increment
 `define and1_op 	3'b001		// and with 1
 `define sub8_op 	3'b011		// subtract 8
 `define pkr_op 	3'b100		// poker


module alu (
	input clock,
	input [7:0] reg1,
	input [7:0] reg2,
	input [3:0] func,
	input [2:0] spec_fun,
	output reg br_out,
	output reg [7:0] res,
    output reg carry_out
);

reg [8:0] result;
   
initial begin
end

always @(*)
begin
    result <= 8'b0;
	res = 0;
	case(func)
        `add_op: begin
            result <= reg1 + reg2;
            res <= result[7:0];
            carry_out <= result[8];
        end

        `sl_op: begin
            res <= reg1 << reg2;
            carry_out <= 0;
        end
        `sr_op: begin
            res <= reg1 >> reg2;
            carry_out <= 0;
        end
        `stt_op:begin
            res <= reg2;
            carry_out <= 0;
        end
        `stf_op:begin
            res <= reg1;
            carry_out <= 0;
        end
		`be_op: begin
            carry_out <= 0;
			if (reg1 == reg2)	
				br_out <= 1;
			else
				br_out <= 0;
		end
		`blt_op: begin
            carry_out <= 0;
			if (reg1 < reg2)	
				br_out <= 1;
			else
				br_out <= 0;
		end
		`spec_op: begin
            carry_out <= 0;
			case (spec_fun)
				`inc_op:	res <= reg1 + 8'b1;
				`and1_op: res <= reg1 & 8'b1;
				`sub8_op: res <= 8'b1000 - reg1 ;	
                `pkr_op: begin
                    res[7:5] <= 3'b000;
                    res[4] <= reg1[7:4] == 4'b1111;
                    res[3] <= reg1[6:3] == 4'b1111;
                    res[2] <= reg1[5:2] == 4'b1111;
                    res[1] <= reg1[4:1] == 4'b1111;
                    res[0] <= reg1[3:0] == 4'b1111;
                end
			endcase
		end
        //result = low bits from reg2 (imm)
		`slw_op: begin
            carry_out <= 0;
			res[3:0] <= reg2[3:0];
			res[7:4] <= reg1[7:4];
		end
		`shg_op: begin
            carry_out <= 0;
			res[3:0] <= reg1[3:0];
			res[7:4] <= reg2[3:0];
		end
        default: begin
            res <= 8'bxxxxxxxx;
        end
	endcase
end

		
endmodule
