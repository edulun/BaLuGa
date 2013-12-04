module hazard_unit (
    input clock,
    input [2:0] wb_write_reg,
    input [3:0] swap_ctrl,
    input branch_ctrl,
    input jump_ctrl,
    output reg flush_ctrl,
    output reg branch_flag,
    output reg stall_ctrl
);

    reg [1:0] cycle_count;

initial begin
	cycle_count = 2'b0;
    stall_ctrl = 0;
    flush_ctrl = 0;
end
    always @(wb_write_reg) begin
        if (wb_write_reg == 3'b111) branch_flag <= 1;
        else branch_flag <= 0;
    end

    //always @(posedge clock) flush_ctrl <= 0;
    always @(negedge clock) begin
        if (branch_ctrl || jump_ctrl) flush_ctrl <= 1;
        else flush_ctrl <= 0;
        if (swap_ctrl == 4'b1001) begin
            if(cycle_count < 2) begin 
                stall_ctrl <= 1; 
                cycle_count <= cycle_count +1;
            end
            else begin
                stall_ctrl <= 0;
                cycle_count <= 0;
            end
       end
    end

endmodule

