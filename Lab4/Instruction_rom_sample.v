module Instruction_rom_sample
(
        input [7:0] address,
        output [8:0] instruction
);

        reg [8:0] instruction_out;
        
        always @ (address) begin
        
            case(address)        
				0:	instruction_out = 9'b1010_0_1111; // set_low $imm, 15
				1:	instruction_out = 9'b1011_0_1111; // set_high $imm, 15
				2:	instruction_out = 9'b0101_10_001; // set $t1 = $imm
				3:	instruction_out = 9'b1010_0_0001; // set_low $imm, 0
				4:	instruction_out = 9'b1011_0_0000; // set_high $imm, 1
				5:	instruction_out = 9'b0011_10_001; // shift left $t1, $imm
				6:	instruction_out = 9'b0111_01_000; // inc $imm
				7:	instruction_out = 9'b0100_10_001; // shift right $t1, $imm
				8:	instruction_out = 9'b0111_10_001; // and one $t1
				9:	instruction_out = 9'b0111_10_011; // subtract eight $t1
				10:	instruction_out = 9'b1010_1_0000; // set_low $branch, 0
				11:	instruction_out = 9'b1011_1_0000; // set_high $branch, 0
				12:	instruction_out = 9'b0101_01_111; // set_to $imm, $branch
				13:	instruction_out = 9'b0110_11_010; // t2 = imm
				14:	instruction_out = 9'b1001_10_111; // swap $t2, $branch
				15:	instruction_out = 9'b1110_10_111; // jump to 0

                /*
				4:	instruction_out = 9'b0011_10_001; // add $imm, $imm
				5:	instruction_out = 9'b0110_10_001; // set $imm = $t1
                /*
				3:	instruction_out = 9'b0111_01_010; // set_high $branch, 15
				4: instruction_out = 9'b0101_01_010; // $t1 = $imm (16)
				5: instruction_out = 9'b0000_10_001; // $imm += $t1 (32)
				6:	instruction_out = 9'b1010_1_0001; // set_low $branch, 1
				7:	instruction_out = 9'b1011_1_0000; // set_high $branch, 0
				8:	instruction_out = 9'b0011_01_111; // shift left
                */
			endcase
			
        end

        assign instruction = instruction_out;

endmodule
