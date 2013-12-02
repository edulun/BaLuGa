module pipe_mex_wb(
	input clock,
    input [2:0] mex_write_addr,
    input [7:0] mex_write_val,
    input mex_carry_out,
    input [7:0] mex_data_val,
    input mex_mem_read,
    
    output reg [2:0] mex_write_reg,
    output reg [2:0] wb_write_addr,
    output reg [7:0] wb_write_val,
    output reg [7:0] wb_data_val,
    output reg wb_carry_out,
    output reg wb_mem_read
);

    //TODO:forward alu result back to alu if the prev write addr  is equal
    // to the current read_addr1 or read_addr2


reg [7:0] write_val;
reg [2:0] write_addr;
reg [7:0] data_val;
reg mem_read;
reg carry_out;

always @(negedge clock) begin
    write_val <= mex_write_val;
    write_addr <= mex_write_addr;
    data_val <= mex_data_val;
    mem_read <= mex_mem_read;
    carry_out <= mex_carry_out;
end

always @(posedge clock) begin
    wb_write_val <= write_val;
    wb_write_addr <= write_addr;
    wb_data_val <= data_val;
    wb_mem_read <= mem_read;
    wb_carry_out <= carry_out;
    mex_write_reg <= write_addr;
	 end
endmodule
