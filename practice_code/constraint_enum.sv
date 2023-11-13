class packet;
  event cov_ev;
  rand bit [31:0] addr;
  rand int data [];
  rand enum {idle,busy,write,read,resp} mode;
  rand bit [3:0] xfer_id;
  constraint c2 { foreach (addr[i]) unique{xfer_id};}

  constraint add_r {if (mode == idle || mode == busy)
    data.size==0;
    else
      data.size<=300;
      foreach (data[i])
        data[i] inside {32'h00,32'hAA,32'hBB,32'hCC,32'hDD,32'h44,32'd88,32'hff,32'h11,32'h22};
      }
    endclass

    module tb;
    packet p1;
    initial begin
      p1 = new();

      repeat(5); 
    begin
      void'(p1.randomize() with {p1.mode == 1;});
      $display("the value of address =%0d \t, xfer_id = %d \t",p1.addr,p1.xfer_id);
      $display("Mode =%s \n",p1.mode);
      $display("the data array size is %d \t, data=%p \t",p1.data.size,p1.data);

    end 
  begin
    void'(p1.randomize() with {p1.mode == 2;});
    $display("the value of address =%0d \t, xfer_id = %0d \t",p1.addr,p1.xfer_id);
    $display("Mode =%s",p1.mode);
    $display("the data array size is %d \t, data=%p \t",p1.data.size,p1.data);

  end 
begin
  void'(p1.randomize() with {p1.mode == 3;});
  $display("the value of address =%0d \t , xfer_id = %0d \t",p1.addr,p1.xfer_id);
  $display("Mode =%s",p1.mode);
  $display("the data array size is %d \t, data=%p \t",p1.data.size,p1.data);

end 
end
endmodule
