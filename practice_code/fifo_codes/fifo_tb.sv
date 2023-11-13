
module tb;

reg [31:0] data_in;
wire [31:0] data_out;

int unsigned wr_ptr, rd_ptr, count;
fifo fifo_1(.data_in(data_in),.data_out(data_out));
fifo fifo_2(.data_in(data_in),.data_out(data_out));

initial begin
  wr_ptr = 0;
  rd_ptr = 0;
  count = 0;

  repeat (20) begin
    bit [7:0] data_in;
    bit [7:0] out;

    data_in = $random;
    fifo_1.fifo_write(data_in);
  end
  repeat (20) begin
    fifo_1.fifo_read();
  end
end
initial begin
  repeat (16) begin
    bit [7:0] data_in;
    bit [7:0] out;
    data_in = $random;
    fifo_2.fifo_write(data_in);
  end
  repeat(15) begin
    fifo_2.fifo_read();
  end
end
endmodule

