`define my_sum(x,y,exp)\
x exp y

 //`define my_sum(x,y)\
 //function int my_sum(int x,y);\
   //int z;\
  /// z=0;\
  // z=x+y;\
   //return z;\
 //endfunction

module mod;
//int r;
int m=23;
int n=32;
initial begin
$display("The value of sum = %0d",`my_sum(m,n,+));
$display("The value of sum = %0d",`my_sum(m,n,-));
end
endmodule
