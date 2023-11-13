
class packet;
  rand byte a[];

  constraint addr{ a.size() == 5;}
  constraint addr1{foreach(a[i]) a[i] inside {[65:90],[97:122]};}

  function string name();
    string str;
    foreach(a[i])
      str = {str,string'(a[i])};
      return str;
    endfunction
  endclass

  module tb;
  packet p1;
  initial begin
    p1 = new();
    repeat(10) begin; 
    p1.randomize();
    $display("the string is %0s",p1.name);
  end end
  endmodule
