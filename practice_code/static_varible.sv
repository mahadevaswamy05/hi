
//input is 1,7,9,8,7,4,1 output is 1,7,1,7,9,8,4

class name;
  rand bit [0:3] a;
  static bit [0:3] b=0;
  constraint a2 { a inside {1,7,8,9,4};}
  constraint a1 {if(b==1) a==1;
                  else if(b==2) a==7;
                  else if(b==3) a==1;
                  else if(b==4) a==7;
                  else if(b==5) a==9;
                  else if(b==6) a==8;
                  else if(b==7) a==4;}
                function void f_name();
                  b++;
                endfunction
              endclass

              module tb;
              name n1;
              initial begin
                n1 = new();
                repeat(7) begin
                  n1.f_name();
                  n1.randomize();
                  $display("output is %0d",n1.a);
                end end
                endmodule
