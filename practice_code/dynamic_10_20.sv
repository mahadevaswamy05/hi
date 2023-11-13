
class packet;  
  rand bit [3:0]dilip[];   
  constraint c_addr{dilip.size<10; 
  foreach(dilip[i])                       dilip[i]==i;} 
  endclass  
  module tb;   
  packet p;   
  initial begin    
    p=new();    
    repeat(10)begin       
    void'(p.randomize);      
    $display("value 0f addr=%0p", p.dilip);     
  end  
end 
endmodule
