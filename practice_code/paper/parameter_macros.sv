`define data 56
parameter data_p = `data;

module mod;
int x;
initial begin 
  $display("Value of data= %0d",`data);
  if(x==data_p%2)
  begin
  $display("The data is divisible by 2");
end 
end 
endmodule 
