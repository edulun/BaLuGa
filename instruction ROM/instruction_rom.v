module instruction_rom_prog1
(
    input clock,
    input [7:0] address,
    output [8:0] instruction,
);

    reg [7:0]  rom[255:0];

    //TODO: NEED TO ADD PROGRAM CODE IN ROM
    initial begin

        rom[0] = 8'b00000000;
        rom[1] = 8'b00000000;
        rom[2] = 8'b00000000;
        rom[3] = 8'b00000000;
        rom[4] = 8'b00000000;
        rom[5] = 8'b00000000;
        rom[6] = 8'b00000000;
        rom[7] = 8'b00000000;
        rom[8] = 8'b00000000;
        rom[9] = 8'b00000000;
        rom[10] = 8'b00000000;


    end

    always @ (posedge clock){
        instruction = clock[address];
    }


endmodule
