module tb;
int a[];
initial begin
  a = new[10];
  foreach(a[i])
  begin
    a[i] = $urandom_range(1,10);
end
foreach(a[i]) begin   
  if(a[i]>5) begin    
        
    $display("values are %0d",a[i]);
    $display("values are %0d",a[3]);       
  end end end
  endmodule
          
