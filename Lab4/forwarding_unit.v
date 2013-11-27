module forwarding_unit (
    input [2:0] id_mex_reg1,
    input [2:0] id_mex_reg2,
    input [2:0] mex_wb_reg1,
    input [2:0] mex_wb_reg2,
    input [2:0] mex_wb_wrt_reg,
    input [3:0] alu_func,
    output [1:0] fwd_mux1,      // First ALU input
    output [1:0] fwd_mux2       // Second ALU input
);

    reg [1:0] out1;
    reg [1:0] out2;
    
    always @ (id_mex_reg1 or id_mex_reg2 or mex_wb_reg1 or mex_wb_reg2) begin
        
        // If the destination register of the previous instruction is the
        // operation register of the current instruction, then forward the
        // value in the MEX/EX.reg2 pipe, e.g.
        // previous: setlow $imm, 1
        // current:  load   $t1, $imm
        // Or if the destination register of the previous instruction is the
        // destination register of the current instruction, then forward the
        // value in the MEX/EX.reg2 pipe, e.g.
        // previous: setlow  $imm, 1
        // current:  sethigh $imm, 2
        if (mex_wb_wrt_reg == id_mex_reg1) begin
            out1 = 2'b1;
            out2 = 2'b0;
        end
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
