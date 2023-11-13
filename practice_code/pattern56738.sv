class name;
  rand bit [0:2] a,b,c,d,e;

  constraint addr1{ a inside {[1:9]};}
  constraint addr2{ b inside {[1:9]};}
  constraint addr3{ c inside {[1:9]};}
  constraint addr4{ d inside {[1:9]};}
  constraint addr5{ e inside {[0:9]};}
  constraint addr6{ unique {a,b,c,d,e};}

endclass

module tb;
name n1;
initial begin
  n1 = new();
  repeat (5) begin
    n1.randomize();
$display("5 digit number is %0d%0d%0d%0d%0d",n1.a,n1.b,n1.c,n1.d,n1.e);

end
end
endmodule
