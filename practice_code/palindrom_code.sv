class palindrome; 
  rand bit [3:0] array[4:0] ;
       bit [19:0] data;
  
  constraint array_c {
    foreach(array[i]) {
      array[i] inside {[0:9]};
      if(i<3) array[i] == array[4-i];
    }
  }

  function void post_randomize();
    for(int i=0; i<5; i++) begin
        data = {data,array[i]};
      //data = ((data<<4) | array[i]);
    end
  endfunction
endclass

module top;
  palindrome num = new();
  initial begin
    $display("###### OUTPUT ######");
    for(int i=0 ; i< 5; i++) begin
      assert(num.randomize());
      $write("Array Values are {");
      foreach(num.array[i]) $write(" %h ",num.array[i]);
      $display(" }\n data = %h",num.data);
    end
    $display("####### END #######");
  end
endmodule
