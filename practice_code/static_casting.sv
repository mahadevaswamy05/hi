//here casting is happing between the int 32 data, type to LONGINT 64 data type

module tb;
int data_i;
longint data_o;

initial begin
  data_i = 8'b1000110; // assin value in integer data
  $display("\nsize of int = %0d",$size(data_i));
  $display("before casting int = %b",data_i);
  data_o = longint'(data_i); //  casting integer to int
  $display("after casting int to longint = %b\n",data_o);
end
endmodule 
