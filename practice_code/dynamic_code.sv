module tb;
int a[];
initial begin
  a = new[10];
  foreach(a[i]) begin
    repeat(10)
    a[i] = $urandom_range(1,10);
  end
  foreach(a[i]) begin
    if(a[i]<5) begin
      $display("Array less than 5 values are: %0d",a[i]);
    end
  end
end
endmodule
