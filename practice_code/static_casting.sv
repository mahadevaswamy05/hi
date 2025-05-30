//here casting is happing between the INT data type to LONGINT data type

module tb;
int data_i;
longint data_l;
real data_r;

initial begin
  data_i = 8'b1000110; // assin value in int data
  $display("\nsize of int = %0d",$size(data_i));
  $display("before casting int = %b",data_i);
  data_l = longint'(data_i); //  casting int to longInt
  $display("after casting int to longint = %b\n",data_l);
  data_r = real'(data_i); //  casting int to longInt
  $display("Real value: %f", data_r); // prints: int to Real value: 6.000000
end
endmodule 


