module instruction_rom_prog1
(
    input [7:0] address,
    output [8:0] instruction
);

    reg [8:0]  instruction_out;

    always @ (address) begin
        case (address)
        
            0:  instruction_out = 9'b1011_0_0010;    // shg 0, 0010      # start at position 32
            1:  instruction_out = 9'b0110_01_011;    // stf $imm, $t2    # $t2 = initial memory pos
            2:  instruction_out = 9'b1011_0_0110;    // shg 0, 0110      # end at position 96
            3:  instruction_out = 9'b0110_01_100;    // stf $imm, $s1    # s1 = 96
            4:  instruction_out = 9'b1010_0_1000;    // slw 0, 1000      # jump address = CheckEntry
            5:  instruction_out = 9'b1011_0_0000;    // shg 0, 0000      # s1 = 96
            6:  instruction_out = 9'b0110_01_101;    // stf $imm, $s2    # $s2 = jump address
            7:  instruction_out = 9'b1010_1_0010;    // slw 1, 0010      # branch = +2 (skip next instruction)
            // CheckEntry
            8:  instruction_out = 9'b0001_01_011;    // ld $imm, $t2     # load next entry to $imm
            9:  instruction_out = 9'b0111_01_100;    // pkr $imm         # check entry with pkr instrc
           10:  instruction_out = 9'b1100_01_000;    // beq $imm, $zero  # skip inc if not a succesful entry
           11:  instruction_out = 9'b0111_10_000;    // inc $t1          # succesful entry
            // CheckAndMoveToNext:
           12:  instruction_out = 9'b0101_01_101;    // stf $imm, $s2    # set imm = jump address
           13:  instruction_out = 9'b0111_11_000;    // inc $t2          # increment memory number
           14:  instruction_out = 9'b1100_11_100;    // be  $t2, $s1
           15:  instruction_out = 9'b1110_01_000;    // jmp $imm
           // End:
           16:  instruction_out = 9'b1010_1_0101;    // slw 1, 0x0101    # set imm = memory where the count of
           17:  instruction_out = 9'b1011_1_0000;    // shg 1, 0x0000    # succesful entries will be stored.
           18:  instruction_out = 9'b0010_11_111;    // st  $t2, $branch
           19:  instruction_out = 9'b0111_00_010;    // halt
           
        endcase
    end

    assign instruction = instruction_out;

endmodule


