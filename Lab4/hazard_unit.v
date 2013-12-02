module hazard_unit (
    input clock,
    input swap_ctrl,
    input branch_ctrl,
    output reg flush_ctrl;
    output reg stall_ctrl;
);

    reg [1:0] cycle_count;

initial 

    always @ (negedge clock) begin
        if (branch_ctrl) begin
            flush_ctrl <= 1;
        end
        else flush_ctrl <= 0;
        if (swap_ctrl) begin
            case (cycle_count)
                0: begin 
                    stall_ctrl = 1;
                    cycle_count += 1;
                end
                1: begin
                    stall_ctrl = 1;
                    cycle_count += 1;
                end
                default: begin
                    stall_ctrl = 0;
                    cycle_count = 0;
                end
           endcase
       end
    end 

endmodule

