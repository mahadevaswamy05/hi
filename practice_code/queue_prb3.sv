module tb;

int a[$];
int b;
int c[$];
initial begin
a='{2,5,7,9,1,6,3};
$display("%0p",a);

  $display("size of the queue array :%0d",a.size());
//Here we are displaying the middle value of the array
b =(a.size()/2);
$display("The middle element of the array:%0d",a[b]);

begin //{ this logic for printing particular element 
foreach(a[i])
  if(a[i]==7)
    $display("The particular element:%0d",a[i]);
  end //}

c = a.find(ganesh) with (ganesh ==6); //{ this logic also for printing particular elements 
$display("Another way to get particular element:%0p",c);
end //}
endmodule



