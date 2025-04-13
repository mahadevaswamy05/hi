//sort logic for array without using sort() method remove the duplicate values.{1,2,3,1,2};

module tb;
int a [];
int temp;
initial begin
  a = new[5];
  a = '{10,20,30,20,10};
  $display("the value ogf a=%0p",a);
  //a=a.unique(); //you can use unique method also
  foreach(a[i])
    foreach(a[i]) 
      if(a[i] <= a[i+1]) begin
        temp   = a[i+1];
        a[i+1] = a[i];
        a[i]   = temp;
      end
    $display("output is a=%p",a);
  end
endmodule
