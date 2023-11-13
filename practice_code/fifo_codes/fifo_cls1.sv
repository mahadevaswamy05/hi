
parameter DEPTH=16,DATA_WIDTH=32,ADDRESS_WIDTH=4;
virtual class Fifo;
  bit [DATA_WIDTH-1:0] memory [DEPTH];

  bit[DATA_WIDTH-1:0] data_in;
  bit[DATA_WIDTH-1:0] data_out;

  bit[ADDRESS_WIDTH-1:0] wr_ptr;
  bit[ADDRESS_WIDTH-1:0] rd_ptr;
  bit[ADDRESS_WIDTH :0] count;

pure virtual function void write(bit [DATA_WIDTH-1:0] data_in);
pure virtual function void read();
pure virtual function int is_full();

pure virtual function int is_empty();

pure virtual function void peek1();
endclass :Fifo

virtual class Fifo_1 extends Fifo;
  //parameter DEPTH=15;
virtual function void write(input bit [DATA_WIDTH-1:0] data_in);
    if (!is_full()) begin
      memory[wr_ptr] = data_in;
      wr_ptr = (wr_ptr + 1) % DEPTH;
      count = count + 1;
      $display("FIFO Write: Data = %0d, Count = %0d, fifo = %p,wr_ptr=%0d", data_in, count, memory,wr_ptr);
    end
    else 
      $display("fifo is full");
      //return (1);
    endfunction

    virtual function void read();
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
      endfunction

    virtual function int is_full();
        return (count == DEPTH);
      endfunction

     virtual function int is_empty();
        return (count == 0);
      endfunction

    endclass :Fifo_1


    class Fifo_2 extends Fifo_1;

      function void peek1();
       
          data_out = memory[rd_ptr];
          wr_ptr=wr_ptr-1;
          rd_ptr = (rd_ptr + 1) % DEPTH;
          count = count - 1;
          $display("FIFO Read: Data = %0d, Count = %0d, fifo = %p", data_out, count, memory);
        endfunction
      endclass:Fifo_2


     module tb;
//   Fifo_1 f1;
   Fifo_2 f2;
   initial begin
  //   f1 = new();
     f2 = new();
     //wr_ptr = 0;
     //rd_ptr = 0;
     //count = 0;
   
     repeat(20) begin
   f2.data_in = $random;
    f2.write(f2.data_in);
  end 

  repeat(20) begin
   // f2.read();
  end

  repeat(20) begin
    f2.peek1();
  end
end
  endmodule
