
//Write a function to pass a dynamic array who has 20 locations. Add an element on 11th location and print the values
module tb;
function automatic name(ref int a[],ref int n); 
for(int i=0; i<n;i++)
  a[i]=i;
  $display("the value in 11th index is a=%0d",a[10]);
  $display("the value is =%0p",a); 
endfunction

initial begin
  int a[];
  int n=20;
  a={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20};
  name(a,n); 
end
endmodule
