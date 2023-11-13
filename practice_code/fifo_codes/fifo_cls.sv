class fifo_cls;
  parameter DEPTH = 16;
  //bit [7:0] data_in;
 rand bit [7:0] data_in;
  bit [7:0] data_out;

  reg [31:0] fifo[DEPTH];
  int unsigned wr_ptr, rd_ptr, count;

  function automatic void fifo_write(input reg [7:0] data_in);
    if (!fifo_full()) begin
      fifo[wr_ptr] = data_in;
      wr_ptr = (wr_ptr + 1) % DEPTH;
      count = count + 1;
      $display("FIFO Write: Data = %0d, Count = %0d, fifo = %p,wr_ptr=%0d", data_in, count, fifo,wr_ptr);
    end
    else 
      $display("fifo is full");
    endfunction

    function automatic void fifo_read();
      if (!fifo_empty()) begin
        data_out = fifo[rd_ptr];
        fifo[rd_ptr]=32'bx;
        wr_ptr=wr_ptr-1;
        rd_ptr = (rd_ptr + 1) % DEPTH;
        count = count - 1;
        $display("FIFO Read: Data = %0d, Count = %0d, fifo = %p", data_out, count, fifo);
      end
      else 
        $display("fifo is empty");
      endfunction

      function automatic logic fifo_full();
        return (count == DEPTH);
      endfunction

      function automatic logic fifo_empty();
        return (count == 0);
      endfunction
    endclass

    module tb;
    fifo_cls f_h;
    initial begin
      f_h=new();
      f_h.wr_ptr = 0;
      f_h.rd_ptr = 0;
      f_h.count = 0;

      repeat (20) begin
        bit [7:0] data_in;
        bit [7:0] out;
        f_h.randomize();
       // f_h.data_in = $random;
        f_h.fifo_write(f_h.data_in);

      end
      repeat (20) begin

        f_h.fifo_read();

      end
    end
    endmodule

