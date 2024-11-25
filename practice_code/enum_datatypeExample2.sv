//What is the output of the col
module top();
typedef enum {red, green,blue,yellow,white,black} colors;
colors col;
initial begin
  $cast(col,2+3);
  $display("The enum data value is :%0p", col);
  $display("The Output of the extended data type vaule is :%0d",col);
end
endmodule
