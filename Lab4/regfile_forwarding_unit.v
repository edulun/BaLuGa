module regfile_forwarding_unit (
    input [1:0] id_mex_reg1,
    input [2:0] id_mex_reg2,
    input [2:0] wb_wrt_reg,
    output fwd_mux1,            // First ALU mux selector
    output fwd_mux2       // Second ALU mux selector
);

    reg out1;
    reg out2;
	 
   always @ (id_mex_reg1 or id_mex_reg2 or wb_wrt_reg ) begin
		if(id_mex_reg1 == wb_wrt_reg[1:0] && wb_wrt_reg[2] == 0) out1 <= 1;
        else out1 <= 0;
        if(id_mex_reg2 == wb_wrt_reg) out2 <= 1;
        else out2 <= 0;
    end
    
    assign fwd_mux1 = out1;
    assign fwd_mux2 = out2;
    
endmodule
