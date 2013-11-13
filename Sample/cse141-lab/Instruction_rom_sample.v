module Instruction_rom_sample
(
        input [7:0] address,
        output [8:0] instruction
);

        reg [8:0] instruction_out;
        
        always @ (address) begin
        
            case(address)        
				0:	instruction_out = 9'b1010_0_0000; // set_low $imm, 0
				1:	instruction_out = 9'b1010_0_0000; // set_low $imm, 0
				2:	instruction_out = 9'b1011_0_0001; // set_high $imm, 1
				3: instruction_out = 9'b0101_01_010; // $t1 = $imm (16)
				4: instruction_out = 9'b0000_01_010; // $imm += $t1 (32)
				
			endcase
			
        end

        assign instruction = instruction_out;

endmodule
