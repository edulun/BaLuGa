
module fetch_unit(
	input clock,
	input reset,
	input branch_ctrl,
	input [7:0] branch_val,  // value stored in the $branch register
	output reg [8:0] instruction_val
);

reg [7:0] pc;
reg [8:0] rom [0:9];


initial begin 
    pc = 0;
    rom[0] = 9'b 0000000;
    rom[1] = 9'b 0000001;
    rom[2] = 9'b 0000010;
    rom[3] = 9'b 0000011;
    rom[4] = 9'b 0000100;
    rom[5] = 9'b 0000101;
    rom[6] = 9'b 0000110;
    rom[7] = 9'b 0000111;
    rom[8] = 9'b 0001000;
    rom[9] = 9'b 0001001;
end

always @(posedge clock)
begin
	instruction_val <= rom[pc];	
	//Set program counter to 0 if reset = 1
	if(reset == 1) pc <= 0;
	
	//IF branch flag is set, set pc = addBranch
	else if(branch_ctrl == 1) pc = pc + branch_val;
	else pc <= pc + 1'b1;

		
	
end
	
endmodule
