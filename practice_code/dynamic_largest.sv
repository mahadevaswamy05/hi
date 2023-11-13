

module tb;
int a[];
int j ;
initial begin 
  a = new[10];
  a = '{9,5,22,43,56,55,99,6,8,1};
  $display("the value of a=%0p",a);

  foreach(a[i])
    foreach(a[i])
      if(a[i]<=a[i+1]) begin
        j=a[i+1];
        a[i+1] =a[i];
        a[i]=j ;
        $display("the value of a=%p",a);
      end
    end
    endmodule

    //  a.sort();
    /*j=3;
    if(j==1)begin
      $display("the first largest element = %0d",a[j-1]);
    end
    else if(j==3)begin
      $display("third largest element = %0d",a[j-1]);
    end
    $display("give correct onput");*/
