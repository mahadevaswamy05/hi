
//Write a function that returns true when the input is power of 2(2,4,8,16,32...) or it will return false. 
class packet;
  bit[14:0]num;
  function bit display(bit [14:0] num);
    if($countones(num)==1)
      return 1;
    endfunction
endclass

module tb();
packet p1;
initial begin
  p1 = new();
  if(p1.display(32))
  $display("num is power of 2");
  else
    $display("num is not power of 2");
  
end
endmodule
