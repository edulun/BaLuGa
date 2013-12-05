module instruction_rom_prog1
(
    input [7:0] address,
    output [8:0] instruction
);

    reg [8:0]  instruction_out;

    always @ (address) begin
        case (address)




            // MainProgram3:
            0:  instruction_out = 9'b1010_0_0000;    // slw	0, 1100      # $imm = 128
            1:  instruction_out = 9'b1011_0_1000;    // shg	0, 1100      # $imm = 128
            2:  instruction_out = 9'b0110_01_100;    // stf	$imm, $s1    # $s1 =$imm (Values start here)
            3:  instruction_out = 9'b1011_0_1100;    // shg 0, 1100      # $imm = 192 (Array starts here) 
            4:  instruction_out = 9'b0110_01_101;    // stf	$imm, $s2    # $s2 = 192 (Array)

            //Initialize values

            5:  instruction_out = 9'b1011_1_1111;    // shg	1, 1111      # $branch = 255
            6:  instruction_out = 9'b1010_1_1111;    // slw	1, 1111      # $branch = 255

            7:  instruction_out = 9'b0101_10_111;    // stt	10, 111      # $t1 = $branch (255)
            8:  instruction_out = 9'b1010_1_1110;    // slw	1, 1110      # $branch = -2

            //Loop until last entry
            9:  instruction_out = 9'b0010_00_001;    // st $zero, $imm   #initialize to 0
           10:  instruction_out = 9'b0111_01_000;    // inc $imm
           11:  instruction_out = 9'b1101_01_010;    // bl $imm, $t1     # branch to -2

            //main loop

           12:  instruction_out = 9'b0101_10_000;    // stt $t1, $zero   # t1 = 0
            


           13:  instruction_out = 9'b1010_1_0111;    // slw	1, 0111      # $branch = Increment (~-9)
           14:  instruction_out = 9'b1011_1_1111;    // shg	1, 1111      # $branch = Increment (~-9)

            // Increment:
           15:  instruction_out = 9'b0101_10_101;    // stt	$t1, $s2     # $t1 = $s2 (192)
           16:  instruction_out = 9'b0001_01_100;    // ld  $imm, $s1    # $imm = Mem[$s1]
           17:  instruction_out = 9'b0000_10_001;    // add	$t1, $imm    # $t1 += $imm
           18:  instruction_out = 9'b0001_11_010;    // ld 	$t2, $t1     # $t2 = Mem[$t1]
           19:  instruction_out = 9'b0111_11_000;    // inc	$t2          # $t2++
           20:  instruction_out = 9'b0010_11_010;    // st 	$t2, $t1     # Mem[$t1] = $t2
           21:  instruction_out = 9'b1001_01_100;    // swp $imm, $s1    # swap s1,imm to increase s1
           22:  instruction_out = 9'b0111_01_000;    // inc	$imm         # $imm++
           23:  instruction_out = 9'b0110_01_100;    // stf $imm, $s1    # swap back
           24:  instruction_out = 9'b1101_01_101;    // bl  $imm, $s2    # Start counting if we reach end of array
                                                     //                  # address in $branch here should be this 
                                                     //                  # instruction number - increment instr #

           // imm - misc
           // T1 - current value
           // T2 - most common value # (stored in memory 126)
           // S1 - # of time most common value repeats (stored in 127)
           // S2 - The starting address of the result array
           // S3 - 64, for branching on the entries (should stop when t1 == 64)
           25:  instruction_out = 9'b1010_0_1111;    // slw  0, 0000     # $imm = 64
           26:  instruction_out = 9'b1011_0_0011;    // shg	 0, 0100     # $imm = 64           
           27:  instruction_out = 9'b0110_01_110;    // stf	 $imm, $s3   # $s3 = 64 
           28:  instruction_out = 9'b0110_00_010;    // stf  $zero, $t1  # $t1 = 0 
           29:  instruction_out = 9'b0110_00_011;    // stf  $zero, $t2 
           30:  instruction_out = 9'b0110_00_100;    // stf  $zero, $s1 

           // Count:
           31:  instruction_out = 9'b1010_1_1100;    // slw  1, 1010     # $branch = End (~+13) 
           32:  instruction_out = 9'b1011_1_0000;    // shg  1, 0000     # $branch = End (~+13)
           33:  instruction_out = 9'b1100_10_110;    // be   $t1, $s3    # branch if $t1 == 64
           34:  instruction_out = 9'b0101_01_101;    // stt  $imm, $s2   # $imm = 192 
           35:  instruction_out = 9'b0000_01_010;    // add  $imm, $t1   # $imm = 192 + (entry) 
           36:  instruction_out = 9'b1010_1_0011;    // slw  1, 0011     # go to continue (~+3)
           37:  instruction_out = 9'b0001_01_001;    // ld   $imm, $imm  # $imm = mem[imm] 
           38:  instruction_out = 9'b1101_01_100;    // bl   $imm, $s1   # branch if !(current entry repeats more than prev max)
           39:  instruction_out = 9'b0110_01_100;    // stf  $imm, $s1   # new max count = $imm
           40:  instruction_out = 9'b0101_11_010;    // stt  $t2,  $t1   # new max entry = $t2

           // Continue:
           41:  instruction_out = 9'b1010_0_1111;    // slw  $imm, 0111  # set to count (~31)
           42:  instruction_out = 9'b1011_0_0001;    // shg  $imm, 0001  # set to count (~31)
           43:  instruction_out = 9'b0111_10_000;    // inc  $t1         # increment current entry
           44:  instruction_out = 9'b1110_01_000;    // jmp  $imm

           // end:
           45:  instruction_out = 9'b1010_0_1110;    // slw  $imm, 1110  # $imm = 126
           46:  instruction_out = 9'b1011_0_0111;    // shg  $imm, 0111  # $imm = 126
           47:  instruction_out = 9'b0010_11_001;    // st   $t2, $imm   # Mem[126] = highest value
           48:  instruction_out = 9'b0111_01_000;    // inc  $imm        # $imm = 127
           49:  instruction_out = 9'b1001_11_100;    // swp  $t2, $s1
           50:  instruction_out = 9'b0010_11_001;    // st   $imm, $t2   # Mem[127] = value count
           51:  instruction_out = 9'b0111_00_010;

        endcase
    end

    assign instruction = instruction_out;

endmodule





