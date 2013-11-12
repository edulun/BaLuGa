module Instruction_rom_sample
(
        input [7:0] address,
        output [8:0] instruction
);

        reg [8:0] instruction_out;
        
        always @ (address) begin
        
            case(address)        
				0:	instruction_out = 9'b1010_0_0000; // set_low $imm, 0
				1: 	instruction_out = 9'b0001_10_001; // load $2, $imm
				2:	instruction_out = 9'b1010_0_0001; // set_low $imm, 1
				3: 	instruction_out = 9'b0001_11_001; // load $3, $imm
				4:	instruction_out = 9'b0000_10_011; // sum $2, $3
			endcase
			
        end

        assign instruction = instruction_out;

endmodule