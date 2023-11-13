class packet;
  randc bit[5:0] a;
  // >>
  //  <<
  constraint a2{a inside {[11:22]};}
  constraint h{{a%2==0};}
    function void post_randomize();
      $display("output value: %0d",a);
    endfunction
endclass

packet c;

module test;
initial
begin
  c=new();
  repeat(8) begin
    c.randomize;
end end
endmodule
