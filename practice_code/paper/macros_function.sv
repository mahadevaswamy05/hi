`define data(x,y)\
function int data(int x,y)\
 return x+y\
endfunction\
//parameter data_p `data;

module mod;
int a;
int m,z;
initial begin
  m=56;
  z=6;
  $display("Sum = %0d",data(m,z));
end 
endmodule 

