//{1, 9, 8, 4, 0, 0, 2, 7, 0, 6, 0}
//  Move all non-zero elements to the left while keeping their order.
//  Push all zeros to the right 

module tb();
  int a[11] = {1,9,8,4,0,0,2,7,0,6,0};
  int j = 0;

initial begin
$display("The array values is %0p",a);
  foreach(a[i]) begin
    if(a[i]!=0) begin
      a[j] = a[i];
      if(i != j)
        a[i] = 0;
        j++;
    end
  end
$display("After moving the non- zero elements into the left side %0p",a);
end
endmodule
