
module tb;
int a[5]='{1,12,5,3,100};
initial begin  
foreach(a[i])
  begin
    if(a[i]==100)
    $display("the index i=%0d",i);
end
end

endmodule
