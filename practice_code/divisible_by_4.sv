class packet;
  rand bit [31:0] a[];
    //   bit [31:0] b[];
  constraint c1{
  a.size() == 22;
  foreach (a[i])
    a[i] inside {[1:10]};
  } 
endclass

module test;
packet p;
bit [31:0] b[$];
bit [31:0] temp;
initial begin
//  b=new[5];
  p=new();
    p.randomize();
      $display("array a =%p",p.a);
      foreach(p.a[i])

      if(i!=0 && i%4==0)
       // temp=p.a[i-1];
        //$display("%0d",p.a[i-1]);
        b.push_back(p.a[i-1]);
      $display("array b =%p",b);
    end
endmodule
