module forwarding_unit (
    input [2:0] mex_wb_wrt_reg,
    input [2:0] id_mex_reg1,
    input [2:0] id_mex_reg2,
    input [2:0] id_mex_wrt_reg,
    input alu_src,
    output fwd_mux1,            // First ALU mux selector
    output [1:0] fwd_mux2       // Second ALU mux selector
);

    reg [1:0] out1;
    reg [1:0] out2;
    
    always @ (id_mex_wrt_reg or id_mex_reg1 or id_mex_reg2 or mex_wb_wrt_reg ) begin
        // use immediate value
        if (alu_src) begin
            out2 = 2'b10;
            // write register of current instruction is equal to write register
            // of previous instruction. Forward value to be written on previous
            // write register
            if (id_mex_wrt_reg == mex_wb_wrt_reg) out1 =2'b1;
            // different write registers. No forwarding necessary
            else out1 = 2'b0;
		end
        // Write register of previous instruction = current register 1
        // previous: load     $t1, $imm
        // current:  set from $t1, $s2   # $s2 = $t1
        else if (mex_wb_wrt_reg == id_mex_reg1) begin
            out1 = 2'b1;
            out2 = 2'b0;
        end
        // Write register of previous instruction = current register 2
        // previous: set low  $imm, $1
        // current:  load     $t1, $imm
        else if (mex_wb_wrt_reg == id_mex_reg2) begin
            out1 = 2'b0;
            out2 = 2'b1;
        end
        // No forwarding is needed
        else begin
            out1 = 2'b0;
            out2 = 2'b0;
        end
    end
    
    assign fwd_mux1 = out1;
    assign fwd_mux2 = out2;
    
endmodule
