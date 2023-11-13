
parameter DEPTH=16,DATA_WIDTH=32,ADDRESS_WIDTH=4;
virtual class Fifo_packet #(parameter type T = int);

  bit [DATA_WIDTH-1:0] memory [DEPTH];
  bit[DATA_WIDTH-1:0] data_in;
  bit[DATA_WIDTH-1:0] data_out;

  bit[ADDRESS_WIDTH-1:0] wr_ptr;
  bit[ADDRESS_WIDTH-1:0] rd_ptr;
  bit[ADDRESS_WIDTH :0] count;

pure virtual function void write(bit [DATA_WIDTH-1:0] data_in);
pure virtual function T read();
pure virtual function int is_full();
pure virtual function int is_empty();
pure virtual function void peek1();
endclass :Fifo

class Fifo#(parameter DATA_WIDTH=16, DEPTH=16) extends Fifo_packet#(DATA_WIDTH,DEPTH);
    if (!is_full()) begin
      memory[wr_ptr] = data_in;
      wr_ptr = (wr_ptr + 1) % DEPTH;
      count = count + 1;
      $display("FIFO Write: Data = %0d, Count = %0d, fifo = %p,wr_ptr=%0d", data_in, count, memory,wr_ptr);
    end
    else 
      $display("fifo is full");
    endfunction
endfunction

  virtual function bit[DATA_WIDTH-1:0] read();

if (!is_empty()) begin
        data_out = memory[rd_ptr];
        memory[rd_ptr]=32'bx;
        wr_ptr=wr_ptr-1;
        rd_ptr = (rd_ptr + 1) % DEPTH;
        count = count - 1;
        $display("FIFO Read: Data = %0d, Count = %0d, fifo = %p", data_out, count, memory);
      end
      else 
        $display("fifo is empty");
      e
  virtual function int is_full();
    return count==DEPTH;
  endfunction

  virtual function int is_empty();
    return count==0;
  endfunction

endclass


