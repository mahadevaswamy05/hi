//here casting is happing between the INT data type to LONGINT data type

module tb;
int data_i;
longint data_l;

initial begin
  data_i = 8'b1000110; // assin value in integer data
  $display("\nsize of int = %0d",$size(data_i));
  $display("before casting int = %b",data_i);
  data_l = longint'(data_i); //  casting integer to int
  $display("after casting int to longint = %b\n",data_l);
end
endmodule 
