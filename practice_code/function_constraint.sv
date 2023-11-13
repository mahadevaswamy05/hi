class name;
  rand bit [0:3] a;
  rand bit [0:3] b;
  constraint add_r {a ==f_name (b);}

  function bit [3:0] f_name(int c);
  c = a+b;
  $display("the value of function f_name = %0d",c);
endfunction
endclass

module sw;
name n1;    
initial begin
      n1 = new();
      repeat(5) begin
      void'(n1.randomize);
      $display(" a=%0d b=%0d",n1.a,n1.b);
    end
  end
    endmodule
