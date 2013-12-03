module pipe_mex_wb(
	input clock,
    input mex_reg_write,
    input [2:0] mex_write_addr,
    input [7:0] mex_write_val,
    input mex_carry_out,
    input [7:0] mex_data_val,
    input mex_mem_read,
    
    output reg wb_reg_write,
    output reg [2:0] wb_write_addr,
    output reg wb_carry_out,
    output reg wb_mem_read,
    output reg [7:0] wb_write_val,
    output reg [7:0] wb_data_val
);

    //TODO:forward alu result back to alu if the prev write addr  is equal
    // to the current read_addr1 or read_addr2


reg [7:0] write_val;
reg [2:0] write_addr;
reg [7:0] data_val;
reg mem_read;
reg reg_write;
reg carry_out;

always @(negedge clock) begin
    reg_write <= mex_reg_write;
    write_val <= mex_write_val;
    write_addr <= mex_write_addr;
    data_val <= mex_data_val;
    mem_read <= mex_mem_read;
    carry_out <= mex_carry_out;
end

always @(posedge clock) begin
    wb_reg_write <= reg_write;
    wb_write_val <= write_val;
    wb_write_addr <= write_addr;
    wb_data_val <= data_val;
    wb_mem_read <= mem_read;
    wb_carry_out <= carry_out;
	 end
endmodule
