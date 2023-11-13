class packet;  
  rand bit [3:0]array[];   
  constraint c_addr{array.size()==10;
  foreach (array[i])
    {array[i] inside {[5:7]}};} 
  
 function void post_randomize;
    array.sort;
  $display("the assending order array=%0p",array);
  endfunction 
  
  endclass  
  module tb;   
  packet p;   
  initial begin    
    p=new();    
    repeat(9)begin       
    void'(p.randomize() );     
    $display("value 0f addr=%0p", p.array);     
  end  
end 
endmodule
