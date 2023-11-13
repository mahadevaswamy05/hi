

module tb;
int arr[5] = '{10,20,30,20,10};
int temp;

initial begin
  $display("the output is arr=%0p",arr);
  foreach(arr[i])
    foreach(arr[i])
      if(arr[i]<=arr[i+1]) begin
        temp=arr[i+1];
        arr[i+1] = arr[i];
        arr[i]=temp;
      end
      $display("the array output is=%0p",arr);
    end 
    endmodule
