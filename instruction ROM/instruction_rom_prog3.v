module instruction_rom_prog1
(
    input [7:0] address,
    output [8:0] instruction,
);

    reg [8:0]  instruction_out;

    always @ (address) begin
        case (address)
            // MainProgram3:
            0:  instruction_out = 9'b1011_0_1000;    // shg	0, 1000      # $imm = 128
            1:  instruction_out = 9'b0110_01_100;    // stf	$imm, $s1    # $s1 =$imm (Values start here)
            2:  instruction_out = 9'b1011_0_1100;    // shg 0, 1100      # $imm = 192 (Array starts here) 
            3:  instruction_out = 9'b0110_01_101;    // stf	$imm, $s2    # $s2 = 192 (Array)
            4:  instruction_out = 9'b1010_1_1001;    // slw	1, 1001      # $branch = Increment (~-9)
            5:  instruction_out = 9'b1011_1_1111;    // shg	1, 1111      # $branch = Increment (~-9)

            // Increment:
            6:  instruction_out = 9'b0101_10_101;    // stt	$t1, $s2     # $t1 = $s2 (192)
            7:  instruction_out = 9'b0001_01_100;    // ld  $imm, $s1    # $imm = Mem[$s1]
            8:  instruction_out = 9'b0000_10_001;    // add	$t1, $imm    # $t1 += $imm
            9:  instruction_out = 9'b0001_11_010;    // ld 	$t2, $t1     # $t2 = Mem[$t1]
           10:  instruction_out = 9'b0111_11_000;    // inc	$t2          # $t2++
           11:  instruction_out = 9'b0010_11_010;    // st 	$t2, $t1     # Mem[$t1] = $t2
           12:  instruction_out = 9'b1001_01_100;    // swp $imm, $s1    # swap s1,imm to increase s1
           13:  instruction_out = 9'b0111_01_000;    // inc	$imm         # $imm++
           14:  instruction_out = 9'b0110_01_100;    // stf $imm, $s1    # swap back
           15:  instruction_out = 9'b1101_01_101;    // bl  $imm, $s2    # Start counting if we reach end of array
                                                     //                  # address in $branch here should be this 
                                                     //                  # instruction number - increment instr #

           // imm - misc
           // T1 - current value
           // T2 - most common value # (stored in memory 126)
           // S1 - # of time most common value repeats (stored in 127)
           // S2 - The starting address of the result array
           // S3 - 64, for branching on the entries (should stop when t1 == 64)
           16:  instruction_out = 9'b1010_0_0000;    // slw  0, 0000     # $imm = 64
           17:  instruction_out = 9'b1011_0_0100;    // shg	 0, 0100     # $imm = 64           
           18:  instruction_out = 9'b0110_01_110;    // stf	 $imm, $s3   # $s3 = 64 
           19:  instruction_out = 9'b0110_00_010;    // stf  $zero, $t1  # $t1 = 0 
           20:  instruction_out = 9'b0110_00_011;    // stf  $zero, $t2 
           21:  instruction_out = 9'b0110_00_100;    // stf  $zero, $s1 

           // Count:
           22:  instruction_out = 9'b1010_1_1011;    // slw  1, 1011     # $branch = End (~+13) 
           23:  instruction_out = 9'b1011_1_0000;    // shg  1, 0000     # $branch = End (~+13)
           24:  instruction_out = 9'b1100_10_110;    // be   $t1, $s3    # branch if $t1 == 64
           25:  instruction_out = 9'b0101_01_101;    // stt  $imm, $s2   # $imm = 192 
           26:  instruction_out = 9'b0000_01_010;    // add  $imm, $t1   # $imm = 192 + (entry) 
           27:  instruction_out = 9'b0001_01_001;    // ld   $imm, $imm  # $imm = mem[imm] 
           28:  instruction_out = 9'b1010_1_0011;    // slw  1, 0011     # go to continue (~+3)
           29:  instruction_out = 9'b1101_01_100;    // bl   $imm, $s1   # branch if !(current entry repeats more than prev max)
           30:  instruction_out = 9'b0110_01_100;    // stf  $imm, $s1   # new max count = $imm
           31:  instruction_out = 9'b0110_11_001;    // stf  $t2,  $t1   # new max entry = $t2

           // Continue:
           32:  instruction_out = 9'b0111_10_000;    // inc  $t1         # increment current entry
           33:  instruction_out = 9'b1010_0_0111;    // slw  $imm, 0111  # set to count (~23)
           34:  instruction_out = 9'b1011_0_0001;    // shg  $imm, 0001  # set to count (~23)
           35:  instruction_out = 9'b1110_01_000;    // jmp  $imm

           // end:
           36:  instruction_out = 9'b1010_0_1110;    // slw  $imm, 1110  # $imm = 126
           37:  instruction_out = 9'b1011_0_0111;    // shg  $imm, 0111  # $imm = 126
           38:  instruction_out = 9'b0010_01_101;    // st   $imm, $t2   # Mem[126] = highest value
           39:  instruction_out = 9'b0111_01_000;    // inc  $imm        # $imm = 127
           40:  instruction_out = 9'b1001_11_100;    // swp  $t2, $s1
           41:  instruction_out = 9'b0010_01_101;    // st   $imm, $t2   # Mem[127] = value count

        endcase
    end

    assign instruction = instruction_out;

endmodule
