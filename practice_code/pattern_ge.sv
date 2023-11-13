
//using constraint pattern generation

class name;
  rand bit [3:0] a [];
  constraint a1 {a.size() == 9;

            foreach(a[i])
              if(i ==0)
                a[i] == 0;
              else if(i==1)
                a[i] == 2;
              else if (i==2) 
                a[i] == a[i-1] -1;
      
                            else if  (i>=3 && i<=4) 
                              a[i]==i;
                              else if (i==5)
                                a[i] == i+1;
                                else if(i==6)
                                  a[i] == i -1;
                                  else if (i>=7 && i<=8)
                                    a[i] == i;

              }
  endclass 


  module tb;
  name n1;
  initial begin
     n1 = new();
     repeat(10) begin
       void'(n1.randomize);
       $display("value of a=%0p",n1.a);
     end
   end
   endmodule
