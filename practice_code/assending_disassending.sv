class test;
  rand bit [3:0] a[];  
  rand bit [3:0] b[];
  constraint ass_a{a.size inside {[0:9]};
                   b.size inside {[0:9]};};
constraint ass_aa{foreach(a[i]) 
                          (i>0)->a[i] > a[i-1];}
function void post_randomize();
//   a.sort();
   b.rsort();
endfunction
 endclass

 module tb;  
 test t1;
 initial begin
   t1=new();
   repeat(9) begin
   void'(t1.randomize);
   $display("the value of elements a=%p",t1.a);
   $display("the value of elements b=%p",t1.b);
 end
end
 endmodule


 /*without sort method logic is
 foreach(a[i])
   foreach(a[i])
     if(a[i] <= a[i-1]);
        temp = a[i-1];
        a[i-1] = a[i];
        a[i] = temp;

        //without rsort methos logicis
  foreach(b[i])
    foreach(b[i])
      if(b[i]<=b[i+1]);
        temp = b[i+1];
        b[i+1] = b[i];
        b[i] = temp;

        */
