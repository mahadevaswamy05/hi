class address;
  rand bit [0:3] addr[];

  constraint c_arr{addr.size()==20;
          foreach(addr[i])
            if(i%2==0)
              addr[i]%2 != 0;//odd nuumber
              else
                addr[i]%2==0;//even number
              }
  endclass

module top;
      address m1;
      initial begin
        m1 = new();
        repeat(10) begin
         void'(m1.randomize());
      $display("the value of the addr_index=%0d",m1.addr[i]);
      $display("the value of the addr=%0p",m1.addr);
        end
      end
      endmodule 
