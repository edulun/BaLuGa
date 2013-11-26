module forwarding_unit (
    input [2:0] id_mex_reg1,
    input [2:0] id_mex_reg2,
    input [2:0] mex_wb_reg1,
    input [2:0] mex_wb_reg2,
    output [1:0] fwd_mux_ctrl
);

    reg [1:0] out;
    
    always @ (id_mex_reg1 or id_mex_reg2 or mex_wb_reg1 or mex_wb_reg2) begin
        
        // If the destination register of the previous instruction is the
        // operation register of the current instruction, then forward the
        // previous value, e.g.
        // previous: setlow $imm, 1
        // current:  load   $t1, $imm
        if (id_mex_reg2 == mex_wb_reg1) begin
            out = 2'b1;
        end
        // If the destination register of the previous instruction is the
        // destination register of the current instruction, then forward the
        // previous value, e.g.
        // previous: setlow  $imm, 1
        // current:  sethigh $imm, 2
        if (id_mex_reg1 == mex_wb_reg1) begin
            out = 2'b1;
        end
        else begin
            out = 2'b0
        end
    end
    
    assign fwd_mux_ctrl = out;
    
endmodule