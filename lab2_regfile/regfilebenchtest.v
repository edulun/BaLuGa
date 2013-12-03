module regfilebenchtest();

// Declare inputs as regs and outputs as wires
reg clock;
reg write_ctrl;
reg swap_ctrl;
reg [1:0] read_reg1;
reg [2:0] read_reg2;
reg [2:0] write_reg;
reg [7:0] write_val;

wire [7:0] read_val1;
wire [7:0] read_val2;


initial begin

	clock = 1; 		// initial value of clock
	write_ctrl = 0;
	swap_ctrl = 0;
	
    /*
     * Write initial values for registers
     */

    // $Imm     [Reg 001] = 88
	#10
    write_val = 8'd88;
    write_reg = 3'd1;  
    write_ctrl = 1; 

    // $t1      [Reg 010] = 32
	#10 
    write_val = 8'd32; 
    write_reg = 3'd2;  
    write_ctrl = 1;

    // $t2      [Reg 011] = 44
	#10 
    write_val = 8'd44; 
    write_reg = 3'd3;  
    write_ctrl = 1;

    // $s1      [Reg 100] = 220
	#10 
    write_val = 8'd220; 
    write_reg = 3'd4;  
    write_ctrl = 1;

    // $s2      [Reg 101] = 128
	#10 
    write_val = 8'd128; 
    write_reg = 3'd5;  
    write_ctrl = 1;

    // $s3      [Reg 110] = 255
	#10 
    write_val = 8'd255; 
    write_reg = 3'd6;  
    write_ctrl = 1;

    // $branch  [Reg 111] = 10 
	#10 
    write_val = 8'd10; 
    write_reg = 3'd7;  
    write_ctrl = 1; 
	

    /*
     * Read initial values for registers
     */

    // reg1 = $zero, val1 = 0 
    // reg2 = $s1, val2 = 220 
	#10 
    read_reg1 = 2'd0;	
    read_reg2 = 3'd4;  
    write_ctrl = 0; 

    // reg1 = $imm, val1 = 88 
    // reg2 = $s2,  val2 = 128
	#10 
    read_reg1 = 2'd1;	
    read_reg2 = 3'd5;  
    write_ctrl = 0; 

    // reg1 = $t1,  val1 = 32 
    // reg2 = $s3,  val2 = 255
	#10 
    read_reg1 = 2'd2;	
    read_reg2 = 3'd6;  
    write_ctrl = 0; 

    // reg1 = $t2,  val1 = 44  
    // reg2 = $branch, val2 = 10
	#10 
    read_reg1 = 2'd3;	
    read_reg2 = 3'd7;  
    write_ctrl = 0; 

    //swap $imm, $s1
    //val1 = 220, val2 = 88
	#10 
    read_reg1 = 2'd1;  
    read_reg2 = 3'd4;	  
    swap_ctrl = 1; 	

    #10 
    swap_ctrl = 0;
    
    //swap  $t1, $t2
    //val1 = 44, val2 = 32
	#10 
    write_ctrl = 1;
    write_reg = 3'd3;
    read_reg1 = 2'd2;  
    read_reg2 = 3'd3;      
    swap_ctrl = 1;  

end

// Clock generator
always begin
	#5 clock = ~clock; // Toggle clock every 5 ticks
	// this makes the clock cycle 10 ticks
end


register_file	b2v_inst(
	.clock(clock),
	.write_ctrl(write_ctrl),
	.swap_ctrl(swap_ctrl),
	.read_reg1(read_reg1),
	.read_reg2(read_reg2),
	.write_reg(write_reg),
	.write_val(write_val),
	.read_val1(read_val1),
	.read_val2(read_val2));



endmodule
