class packet;
  rand int a[];  
  constraint a1 { a.size() inside {[1:20]};}
  constraint a2 {foreach (a[i]){
    if(i % 2 == 0)
      {a[i] == 0 ;  
    }
    else{
      a[i] == (i + 1 )/2 ;
    } } }
  endclass

  module test;
  packet p1;
  initial begin
  p1 = new; 
    repeat(10) begin
      p1.randomize();  
      $display("a = %0p", p1.a);
    end
  end
  endmodule
