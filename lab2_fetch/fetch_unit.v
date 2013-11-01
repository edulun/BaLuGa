
module fetch_unit(
	input clock,
	input reset,
	input branch_ctrl,
	input [7:0] branch_val,  // value stored in the $branch register
	input jump_ctrl,
	input [7:0] jump_val,
	output reg [8:0] instruction_val
);

reg [7:0] pc;
reg [8:0] rom [0:29];


initial begin 
    pc = 0;
    rom[0] = 9'd0 ;
    rom[1] = 9'd1 ;
    rom[2] = 9'd2 ;
    rom[3] = 9'd3 ;
    rom[4] = 9'd4 ;
    rom[5] = 9'd5 ;
    rom[6] = 9'd6 ;
    rom[7] = 9'd7 ;
    rom[8] = 9'd8 ;
    rom[9] = 9'd9 ;
    rom[10] = 9'd10 ;
    rom[11] = 9'd200 ;
    rom[12] = 9'd31 ;
    rom[13] = 9'd20 ;
    rom[14] = 9'd41 ;
    rom[15] = 9'd51 ;
    rom[16] = 9'd99 ;
    rom[17] = 9'd13 ;
    rom[18] = 9'd12 ;
    rom[19] = 9'd19 ;
    rom[20] = 9'd22 ;
    rom[21] = 9'd40 ;
    rom[22] = 9'd38 ;
    rom[23] = 9'd24 ;
    rom[24] = 9'd100 ;
    rom[25] = 9'd324 ;
    rom[26] = 9'd111 ;
    rom[27] = 9'd120 ;
    rom[28] = 9'd130 ;
    rom[29] = 9'd14 ;
end

always @(posedge clock)
begin
	instruction_val <= rom[pc];	
	//Set program counter to 0 if reset = 1
	if(reset == 1) pc <= 0;
	
	//IF branch flag is set, set pc = addBranch
	else if(branch_ctrl == 1) pc = pc + branch_val;
	else if(jump_ctrl == 1) pc = jump_val;
	else pc <= pc + 1'b1;
end
	
endmodule
