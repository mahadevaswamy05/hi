//fifo code for both write operation and read operation
module fifo #(parameter DEPTH=16,DATA_WIDTH=32)(
  input w_en,r_en,
  input [DATA_WIDTH-1:0] data_in,
  output reg [DATA_WIDTH-1:0] data_out);
  //output reg full,empty); 

  reg [DATA_WIDTH-1:0] fifo[DEPTH];
  int wr_ptr,rd_ptr,count;

  function automatic reg [31:0] fifo_write(input reg [31:0] data_in);
    if(!fifo_full()) begin
      fifo[wr_ptr] =data_in;
      wr_ptr = (wr_ptr +1) % DEPTH;
      count = count +1;  
      $display("the fifo_write is data_in =%0d",data_in);
      $display("the fifo_memory is =%0p",fifo);
    end
    else
      $display("fifo is full");
    endfunction

    function automatic reg [31:0] fifo_read();
      reg [31:0] data_out;
      if(!fifo_empty()) begin
        data_out = fifo[rd_ptr];
        fifo[rd_ptr] = 32'bx;
        rd_ptr = (rd_ptr+1) %DEPTH;
        count=count-1;
        $display("the fifo read output is =%0d",data_out);
        $display("the value of fifo read memory is =%p",fifo);
      end
      else
        $display("fifo is empty");
      endfunction


      function automatic reg [31:0] fifo_full(); 
        return (count == DEPTH); 
      endfunction 

      function automatic reg [31:0] fifo_empty(); 
        return (count == 0); 
      endfunction 

     endmodule
