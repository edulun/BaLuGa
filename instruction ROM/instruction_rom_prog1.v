module instruction_rom_prog1
(
    //input clock,
    input [7:0] address,
    output [8:0] instruction,
);

    reg [8:0]  instruction_out;

    always @ (address) begin
        case (address)
            0:  instruction_out = 9'b1010_0_0001;    // set_low  $imm, 0001
            1:  instruction_out = 9'b0001_10_001;    // load     $t1, $imm
            2:  instruction_out = 9'b0110_10_100;    // set_from $t1, $s1
            3:  instruction_out = 9'b0111_01_000;    // incr     $imm
            4:  instruction_out = 9'b0001_10_001;    // load     $t1, $imm
            5:  instruction_out = 9'b0110_10_101;    // set_from $t1, $s2
            6:  instruction_out = 9'b0101_10_000;    // set_to   $t1, $zero
            // MainLoop (Instruction 8):
            7:  instruction_out = 9'b0101_01_100;    // set_to $imm, $s1 # $imm = $s1  (Operand 1)
            8:  instruction_out = 9'b0111_01_001;    // and1   $imm	   	 # $imm = $imm[0] & 0x1
            9:  instruction_out = 9'b1010_1_1111;    // set_lw 1, 1111 	 # Set $branch = Continue (+2)
           10:  instruction_out = 9'b1011_1_0000;    // set_high 1,0000  # Set $branch = Continue (+2)
           11:  instruction_out = 9'b1100_01_000;    // be  $imm, $zero  # If ($imm == 0) branch to Continue
           // Addlow:
           12:  instruction_out = 9'b0110_01_101;    // stf $imm, $s2    # $imm = $s2 (Operand 2)
           13:  instruction_out = 9'b0011_01_110;    // sl  $imm, $s3 	 # Shift left by $s3(Counter) number of bits
           14:  instruction_out = 9'b0000_10_001;    // add $t1, $imm    # $t1 (Low result bits) += $imm (carryout in $imm)
           // AddHigh:
           15:  instruction_out = 9'b1010_1_0010;    // slw	1, 0x2       # Set $branch = Continue (+2)
           16:  instruction_out = 9'b1011_1_0000;    // set_high 1,0000  # Set $branch = Continue (+2)
           17:  instruction_out = 9'b1100_01_000;    // be $imm, $zero   # no carryOut
           18:  instruction_out = 9'b0111_11_000;    // inc $t2          # assign carryOut
           19:  instruction_out = 9'b0101_01_101;    // stt $imm, $s2    # imm = operand 2
           20:  instruction_out = 9'b1001_10_110;    // swp $t1, $s3     # swap with counter
           21:  instruction_out = 9'b0111_10_011;    // sub8 $t1         # counter = 8 - counter
           22:  instruction_out = 9'b0100_01_010;    // shif_r $imm, $t1 # shift by 8 - counter
           23:  instruction_out = 9'b0111_10_011;    // sub8 $t1         # counter = 8 - counter
           24:  instruction_out = 9'b1001_10_110;    // swap $t1, $s3    # swap counter <-> low bits
           25:  instruction_out = 9'b0000_11_001;    // add  $t2, $imm   # add to high bits
           // Continue:
           26:  instruction_out = 9'b1010_0_0001;    // slw  0, 0001     # $imm = 1
           27:  instruction_out = 9'b1011_0_0000;    // shg  0, 0000     # $imm = 1
           28:  instruction_out = 9'b1001_01_100;    // swp  $imm, $s1
           29:  instruction_out = 9'b0100_01_100;    // sr   $imm, $s1   # shift operand 1 right once
           30:  instruction_out = 9'b1001_01_100;    // swp  $imm, $s1
           31:  instruction_out = 9'b1001_01_110;    // swp  $imm, $s3
           32:  instruction_out = 9'b0111_01_000;    // inc  $imm        # counter +=1
           33:  instruction_out = 9'b1001_01_110;    // swp  $imm, $s3
           34:  instruction_out = 9'b1010_1_0011;    // slw  1, 0011
           35:  instruction_out = 9'b1011_1_1100;    // shg  1, 1100
           36:  instruction_out = 9'b1100_00_101;    // beq  $zero, $s2  # GO TO MAINLOOP
           // End:
           37:  instruction_out = 9'b1010_0_0011;    // slw  0, 3        # $Imm = 0x3
           38:  instruction_out = 9'b1011_0_0000;    // shg  0, 0        # $Imm = 0x3
           39:  instruction_out = 9'b0010_10_001;    // st   $t1, $imm   # Mem[3] = $t1 
           40:  instruction_out = 9'b0111_01_000;    // inc  $imm     	 # $imm = 4
           41:  instruction_out = 9'b0010_11_001;    // st   $t2, $imm   # Mem[4] = $t2
           42:  instruction_out = 9'b0111_00_010;    // halt 
        endcase
    end

    assign instruction = instruction_out;

endmodule
