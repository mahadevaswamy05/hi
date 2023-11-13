class packet;  
  rand bit [3:0]array[];   
  constraint c_addr{array.size==5; 

  foreach(array[i])
    {array[i] inside {[0:10]};}} 
  endclass  
  module tb;   
  packet p;   
  initial begin    
    p=new();    
    repeat(10)begin       
    void'(p.randomize);      
    $display("value 0f array=%0p", p.array);     
  end  
end 
endmodule
