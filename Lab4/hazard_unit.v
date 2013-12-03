module hazard_unit (
    input clock,
    input [3:0] swap_ctrl,
    input branch_ctrl,
    output reg flush_ctrl,
    output reg stall_ctrl
);

    reg [1:0] cycle_count;

initial begin
	cycle_count = 2'b0;
    stall_ctrl = 0;
    flush_ctrl = 0;
end

    always @(negedge clock) begin
        if (branch_ctrl) begin
            flush_ctrl <= 1;
        end
        else flush_ctrl <= 0;
        if (swap_ctrl == 4'b1001) begin
            case (cycle_count)
                0: begin 
                    stall_ctrl <= 1;
                    cycle_count <= cycle_count + 1;
                end
                1: begin
                    stall_ctrl <= 1;
                    cycle_count <= cycle_count + 1;
                end
                default: begin
                    stall_ctrl <= 0;
                    cycle_count <= 0;
                end
           endcase
       end
    end 

endmodule

