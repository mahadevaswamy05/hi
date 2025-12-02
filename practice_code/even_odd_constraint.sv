 class packet;
    rand bit [0:7] a [10];
    constraint a1{foreach(a[i])
                  if(i%2==0) //Even number generation
                    a[i]%2==0;
                  else
                    a[i]%2!=0; //Odd number generation
                  }
endclass
 
module tb;
packet n1;
  initial begin
   n1=new();
   repeat(10) begin
   void'(n1.randomize());
   $display("the output: a=%0p",n1.a);
  end
 end
endmodule

