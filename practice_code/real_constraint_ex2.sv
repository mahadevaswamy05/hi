//real constraint

class swamy;
  rand int a;
  real b;
  constraint add_r { a inside {[990:1000]};}
/*
  function void post_randomize();
  b = real'((a%100));
  b = (a/100)+ b/100;
endfunction*/
  function void post_randomize();
  b=a/10.0;
  $display("the real num %2f",b);
  endfunction
endclass
  
module tb;
  swamy s1;
  initial begin
    s1= new();
    repeat(10) begin
      void'(s1.randomize());
      $display("the value of randomize b=%p",s1.a);
        end
      end
      endmodule
