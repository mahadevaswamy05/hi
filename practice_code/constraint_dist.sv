
class name;
  rand bit [7:0] a,b;
  constraint C1 {(a==b) dist {1:=10, 0:=90};}
    endclass

    module tb;
     name a1;
      initial begin
              a1=new();
              repeat(200)
            begin
              assert(a1.randomize());
              $display("the value of  a=%0d and b=%0d and ",a1.a,a1.b);
            end
              end
      endmodule 

                   

