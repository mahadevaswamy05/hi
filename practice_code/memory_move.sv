class packet;
  bit [7:0]mem[4096];
  static int count=0;//always initialize count to zero

  function int f_name(int num_bytes);
  begin
    for(int i=1;i<=num_bytes;i++)begin
      if(count==$size(mem))begin
        $display("fifo is full\nreturning -1");
        return -1;
      end
      else begin
        count++;
      end
    end
    $display("\twritten %0d locations\n\tfree space=%0d",count,$size(mem)-count);
  end
endfunction
endclass

module tb ;
packet m=new();

initial begin
  repeat(5)begin
    m.f_name(1000);
  end
end
endmodule
