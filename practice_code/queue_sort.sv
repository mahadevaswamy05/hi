class c1;
  int a[$]={2,5,7,9,1,6,3};
  rand int b[$];

  constraint c_addr { a.size==b.size;
  foreach(a[i]){b[i] == a[i]};
}

function void post_randomize();
  b.sort();
  $display("%0p", b);
endfunction 

endclass

module p1;
c1 c1_h;
initial begin
  c1_h = new();
  c1_h.randomize();
  $display("a is %p",c1_h.b);
end
endmodule
