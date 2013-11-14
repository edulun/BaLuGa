module instruction_rom_prog1
(
    //input clock,
    input [7:0] address,
    output [8:0] instruction,
);

    reg [8:0]  instruction_out;

    //TODO: NEED TO ADD PROGRAM CODE IN ROM
    always @ (address) begin
        case (address)
            0:  instruction_out = 9'b1010_0_0001;    // set_low  $imm, 0001
            1:  instruction_out = 9'b0001_10_001;    // load     $t1, $imm
            2:  instruction_out = 9'b0110_10_100;    // set_from $t1, $s1
            3:  instruction_out = 9'b0111_01_000;    // incr     $imm
            4:  instruction_out = 9'b0001_10_001;    // load     $t1, $imm
            5:  instruction_out = 9'b0110_10_101;    // set_from $t1, $s2
            6:  instruction_out = 9'b0101_10_000;    // set_to   $t1, $zero
        endcase
    end

    assign instruction = instruction_out;

endmodule
