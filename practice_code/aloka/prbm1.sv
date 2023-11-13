module tb;
function void one(input int n,output int  arr[]);
arr = new[n];
  for(int i=0;i<n;i++)
    arr[i]=i;
    $display("Array with arrguments %0p",arr);
  endfunction 
                          
  initial begin
  int n, arr[];
 arr =  new[n];
  n = $random;
    one(n,arr);

  end
  endmodule
                                         
