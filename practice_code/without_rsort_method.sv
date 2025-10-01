//sort logic for array without using rsort() method remove the duplicate values.{1,2,3,1,2};

module tb;
int a [];
int temp;
initial begin
  a = new[5];
  a = '{10,20,30,20,10};
  $display("the value ogf a=%0p",a);
  //a=a.unique(); //you can use unique method also
//  foreach(a[i])
  foreach(a[i]) begin
    for(int j=0; j< a.size()-i-1;j++) begin
      if(a[j]  < a[j+1]) begin
        temp   = a[j+1];
        a[j+1] = a[j];
        a[j]   = temp;
      end
    end
  end
  $display("output is without rsort a=%p",a);
end
endmodule
