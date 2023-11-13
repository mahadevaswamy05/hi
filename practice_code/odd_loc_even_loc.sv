//write constraint for 4 bit dynamic array. the size of the array should be in between 15 t0 20. There should be even number in odd and odd number in even locations


class name;
  rand bit [0:3] a[];
  int i;
  constraint c_addr{a.size() inside {[15:20]};}
  constraint odd_d {foreach(a[i]) {
    if(i%2 == 0)
      a[i]%2 == 1;
      else
        a[i]%2 == 0;
      }}

      function void display();
      $display("\t\t\t*---size=%0d---\n",a.size());
      foreach(a[i]) begin 
      if(i%2 == 0)
      $write("\t index =%0d(EVEN location}",a[i]);
      else 
      $write("\t index =%0d(ODD location}",a[i]);

      if(a[i]%2 == 0)
      $display("\t value =%0d(EVEN number}",a[i]);
      else
      $display("\t value =%0d(ODD number}",a[i]);
      end
      endfunction
      endclass

            module tb;
            name n1;
            initial begin
              n1 =new();
              repeat(15) begin
                void'(n1.randomize);
                n1.display();
              end 
            end
            endmodule 
