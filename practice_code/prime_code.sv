
class name;
  rand int a[$];
  constraint c_prime{a.size inside {12};
    foreach (a[i]) 
    if(!(( i %2 ==0 && i!=2) || (i%3 == 0 && i!=3) || (i% 5== 0 && i !=5) || (i% 7== 0 && i!=7) ||(i% 8== 0 && i!=8) || (i% 9== 0 && i!=9)))
   a[i]==i;
   else
     a[i]==1;}
endclass 
module tb;
name n1;
initial begin
  n1= new();
  repeat(22) begin
    void'(n1.randomize);
    $display("the value of a=%0p",n1.a);
  end
end
  endmodule
  
  
