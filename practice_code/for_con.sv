

module tb;
initial begin
  for(int i=0;i<4;i++)
fork
    
$display("the value i=%0d ",i);
join_none

end
endmodule 
